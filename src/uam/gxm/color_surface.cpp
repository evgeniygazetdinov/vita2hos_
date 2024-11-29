#include "uam/gxm/color_surface.h"

namespace uam {
namespace gxm {

VkFormat translate_color_format(SceGxmColorFormat format) {
    switch (format) {
        case SCE_GXM_COLOR_FORMAT_U8U8U8U8_ABGR:
            return VK_FORMAT_R8G8B8A8_UNORM;
        case SCE_GXM_COLOR_FORMAT_U8U8U8U8_ARGB:
            return VK_FORMAT_B8G8R8A8_UNORM;
        case SCE_GXM_COLOR_FORMAT_U8U8U8U8_RGBA:
            return VK_FORMAT_R8G8B8A8_UNORM;
        case SCE_GXM_COLOR_FORMAT_U8U8U8U8_BGRA:
            return VK_FORMAT_B8G8R8A8_UNORM;
        // Add more format translations as needed
        default:
            return VK_FORMAT_UNDEFINED;
    }
}

VkImageTiling translate_color_surface_type(SceGxmColorSurfaceType type) {
    switch (type) {
        case SCE_GXM_COLOR_SURFACE_LINEAR:
            return VK_IMAGE_TILING_LINEAR;
        case SCE_GXM_COLOR_SURFACE_TILED:
            return VK_IMAGE_TILING_OPTIMAL;
        default:
            return VK_IMAGE_TILING_LINEAR;
    }
}

uint32_t get_bytes_per_pixel(SceGxmColorFormat format) {
    switch (format) {
        case SCE_GXM_COLOR_FORMAT_U8U8U8U8_ABGR:
        case SCE_GXM_COLOR_FORMAT_U8U8U8U8_ARGB:
        case SCE_GXM_COLOR_FORMAT_U8U8U8U8_RGBA:
        case SCE_GXM_COLOR_FORMAT_U8U8U8U8_BGRA:
            return 4;
        // Add more format sizes as needed
        default:
            return 0;
    }
}

int ColorSurface::init(SceGxmColorFormat colorFormat,
                      SceGxmColorSurfaceType surfaceType,
                      SceGxmColorSurfaceScaleMode scaleMode,
                      SceGxmOutputRegisterSize outputRegisterSize,
                      uint32_t width,
                      uint32_t height,
                      uint32_t strideInPixels,
                      void *data) {
    // Store surface parameters
    width_ = width;
    height_ = height;
    strideInPixels_ = strideInPixels;
    colorFormat_ = colorFormat;
    surfaceType_ = surfaceType;
    data_ = data;

    // Initialize the GXM color surface
    return sceGxmColorSurfaceInit(&surface_, colorFormat, surfaceType, scaleMode,
                                 outputRegisterSize, width, height, strideInPixels, data);
}

void* ColorSurface::get_data() const {
    return data_;
}

SceGxmColorFormat ColorSurface::get_format() const {
    return colorFormat_;
}

SceGxmColorSurfaceType ColorSurface::get_type() const {
    return surfaceType_;
}

uint32_t ColorSurface::get_stride_in_pixels() const {
    return strideInPixels_;
}

uint32_t ColorSurface::get_stride_in_bytes() const {
    return strideInPixels_ * get_bytes_per_pixel(colorFormat_);
}

bool ColorSurface::is_disabled() const {
    return sceGxmColorSurfaceIsEnabled(&surface_) == SCE_FALSE;
}

void ColorSurface::get_dimensions(uint32_t &width, uint32_t &height) const {
    width = width_;
    height = height_;
}

void ColorSurface::set_data(void *data) {
    data_ = data;
    // Reinitialize the surface with new data
    sceGxmColorSurfaceInit(&surface_, colorFormat_, surfaceType_, SCE_GXM_COLOR_SURFACE_SCALE_NONE,
                          SCE_GXM_OUTPUT_REGISTER_SIZE_32BIT, width_, height_, strideInPixels_, data_);
}

void ColorSurface::set_format(SceGxmColorFormat format) {
    colorFormat_ = format;
    // Reinitialize the surface with new format
    sceGxmColorSurfaceInit(&surface_, colorFormat_, surfaceType_, SCE_GXM_COLOR_SURFACE_SCALE_NONE,
                          SCE_GXM_OUTPUT_REGISTER_SIZE_32BIT, width_, height_, strideInPixels_, data_);
}

void ColorSurface::set_disabled(bool disabled) {
    if (disabled) {
        sceGxmColorSurfaceInitDisabled(&surface_);
    } else {
        // Re-enable the surface by reinitializing it
        sceGxmColorSurfaceInit(&surface_, colorFormat_, surfaceType_, SCE_GXM_COLOR_SURFACE_SCALE_NONE,
                              SCE_GXM_OUTPUT_REGISTER_SIZE_32BIT, width_, height_, strideInPixels_, data_);
    }
}

} // namespace gxm
} // namespace uam
