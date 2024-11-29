#ifndef GXM_COLOR_SURFACE_C_H
#define GXM_COLOR_SURFACE_C_H

#include <psp2/gxm.h>
#include <stdint.h>
#include "gxm_types.h"

#ifdef __cplusplus
extern "C" {
#endif

// Forward declarations for Vulkan types
typedef uint32_t VkFormat;
typedef uint32_t VkImageTiling;

// Function declarations
VkFormat translate_color_format(SceGxmColorFormat format);
VkImageTiling translate_color_surface_type(SceGxmColorSurfaceType type);
uint32_t get_bytes_per_pixel(SceGxmColorFormat format);

#ifdef __cplusplus
}
#endif

#endif // GXM_COLOR_SURFACE_C_H
