#pragma once

// Include Vulkan headers first
#include <vulkan/vulkan.h>

// Then include platform-specific headers
#include <psp2/gxm.h>

// Include GXM types
#include "gxm_types.h"

namespace uam {
namespace gxm {

// Convert GXM color format to Vulkan format
VkFormat translate_color_format(SceGxmColorFormat format);

// Convert GXM surface type to Vulkan tiling
VkImageTiling translate_color_surface_type(SceGxmColorSurfaceType type);

// Get bytes per pixel for a given color format
uint32_t get_bytes_per_pixel(SceGxmColorFormat format);

// Color surface operations
class ColorSurface {
public:
    ColorSurface() = default;
    ~ColorSurface() = default;

    // Initialize color surface
    int init(SceGxmColorFormat colorFormat,
             SceGxmColorSurfaceType surfaceType,
             SceGxmColorSurfaceScaleMode scaleMode,
             SceGxmOutputRegisterSize outputRegisterSize,
             uint32_t width,
             uint32_t height,
             uint32_t strideInPixels,
             void *data);

    // Getters
    void* get_data() const;
    SceGxmColorFormat get_format() const;
    SceGxmColorSurfaceType get_type() const;
    uint32_t get_stride_in_pixels() const;
    uint32_t get_stride_in_bytes() const;
    bool is_disabled() const;
    void get_dimensions(uint32_t &width, uint32_t &height) const;

    // Setters
    void set_data(void *data);
    void set_format(SceGxmColorFormat format);
    void set_disabled(bool disabled);

    // Get raw surface
    const SceGxmColorSurface* get_surface() const { return &surface_; }
    SceGxmColorSurface* get_surface() { return &surface_; }

private:
    SceGxmColorSurface surface_;
    uint32_t width_;
    uint32_t height_;
    uint32_t strideInPixels_;
    SceGxmColorFormat colorFormat_;
    SceGxmColorSurfaceType surfaceType_;
    void* data_;
};

} // namespace gxm
} // namespace uam
