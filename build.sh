#!/bin/bash

# Exit on error
set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Function to check if a command exists
check_command() {
    if ! command -v $1 &> /dev/null; then
        echo -e "${RED}Error: $1 is not installed${NC}"
        return 1
    fi
    echo -e "${GREEN}✓ Found $1${NC}"
    return 0
}

# Function to check if a directory exists
check_directory() {
    if [ ! -d "$1" ]; then
        echo -e "${RED}Error: Directory $1 not found${NC}"
        return 1
    fi
    echo -e "${GREEN}✓ Found directory $1${NC}"
    return 0
}

# Function to clean build directory
clean_build() {
    if [ -d "build" ]; then
        echo -e "${YELLOW}Cleaning build directory...${NC}"
        rm -rf build
    fi
}

# Function to update CMake
update_cmake() {
    echo -e "${YELLOW}Checking CMake version...${NC}"
    local cmake_version=$(cmake --version | head -n1 | cut -d" " -f3)
    echo "Current CMake version: $cmake_version"
    
    # Update CMake if needed
    if command -v apt-get &> /dev/null; then
        echo -e "${YELLOW}Updating CMake...${NC}"
        sudo apt-get update
        sudo apt-get install --only-upgrade cmake
        cmake_version=$(cmake --version | head -n1 | cut -d" " -f3)
        echo -e "${GREEN}Updated CMake version: $cmake_version${NC}"
    else
        echo -e "${YELLOW}Package manager not found. Please update CMake manually if needed.${NC}"
    fi
}

# Parse command line arguments
CLEAN=0
UPDATE_CMAKE=0
BUILD_TYPE="Release"

while [[ $# -gt 0 ]]; do
    case $1 in
        --clean)
            CLEAN=1
            shift
            ;;
        --update-cmake)
            UPDATE_CMAKE=1
            shift
            ;;
        --debug)
            BUILD_TYPE="Debug"
            shift
            ;;
        *)
            echo -e "${RED}Unknown option: $1${NC}"
            echo "Usage: $0 [--clean] [--update-cmake] [--debug]"
            exit 1
            ;;
    esac
done

echo -e "${YELLOW}Checking build dependencies...${NC}"

# Check for basic build tools
check_command "cmake" || { echo "Please install cmake"; exit 1; }
check_command "make" || { echo "Please install make"; exit 1; }
check_command "gcc" || { echo "Please install gcc"; exit 1; }
check_command "g++" || { echo "Please install g++"; exit 1; }

# Update CMake if requested
if [ $UPDATE_CMAKE -eq 1 ]; then
    update_cmake
fi

# Check for VitaSDK
if [ -z "$VITASDK" ]; then
    if [ -d "/usr/local/vitasdk" ]; then
        export VITASDK="/usr/local/vitasdk"
        echo -e "${GREEN}✓ Found VitaSDK in /usr/local/vitasdk${NC}"
    else
        echo -e "${RED}Error: VITASDK environment variable not set and VitaSDK not found in /usr/local/vitasdk${NC}"
        echo "Please install VitaSDK or set VITASDK environment variable"
        exit 1
    fi
fi

# Check for DevkitPro (optional)
if [ -z "$DEVKITPRO" ]; then
    if [ -d "/opt/devkitpro" ]; then
        export DEVKITPRO="/opt/devkitpro"
        echo -e "${GREEN}✓ Found DevkitPro in /opt/devkitpro${NC}"
    else
        echo -e "${YELLOW}Warning: DevkitPro not found. Switch build support will be limited${NC}"
    fi
fi

# Check for Vulkan SDK
if [ -z "$VULKAN_SDK" ]; then
    if [ -d "/usr/include/vulkan" ]; then
        echo -e "${GREEN}✓ Found Vulkan SDK in system path${NC}"
    else
        echo -e "${RED}Error: Vulkan SDK not found${NC}"
        echo "Please install Vulkan SDK"
        exit 1
    fi
fi

# Clean if requested
if [ $CLEAN -eq 1 ]; then
    clean_build
fi

# Create and enter build directory
echo -e "${YELLOW}Setting up build directory...${NC}"
mkdir -p build
cd build

# Configure with CMake
echo -e "${YELLOW}Configuring with CMake...${NC}"
cmake -G "Unix Makefiles" \
      -DCMAKE_BUILD_TYPE=$BUILD_TYPE \
      -DCMAKE_TOOLCHAIN_FILE=$DEVKITPRO/cmake/Switch.cmake \
      -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
      -B . \
      -S .. \
      --debug-output || { echo -e "${RED}CMake configuration failed${NC}"; exit 1; }

# Build
echo -e "${YELLOW}Building...${NC}"
make -j$(nproc) VERBOSE=1 || { echo -e "${RED}Build failed${NC}"; exit 1; }

echo -e "${GREEN}Build completed successfully!${NC}"

# Copy compile_commands.json to project root for tools like clangd
if [ -f "compile_commands.json" ]; then
    cp compile_commands.json ..
fi

# Optional: Install
read -p "Do you want to install vita2hos? [y/N] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${YELLOW}Installing...${NC}"
    sudo make install || { echo -e "${RED}Installation failed${NC}"; exit 1; }
    echo -e "${GREEN}Installation completed successfully!${NC}"
fi
