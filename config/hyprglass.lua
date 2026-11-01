-- docs: https://github.com/hyprnux/hyprglass
if hl.plugin.hyprglass then
    local hg = hl.plugin.hyprglass

    -- Presets
    hg.preset("clear", {
        glass_opacity = 0.8,
        blur_strength = 1.0,
        dark = { brightness = 0.82 },
        light = { brightness = 1.2 },
    })

    hg.preset("contrasted", {
        inherits = "high_contrast",
        contrast = 1.2,
        adptive_dim = 1.5,
        dark = { tint_color = 0x02142aa9 },
    })

    hg.preset("glass", {
        blur_strength = 2.0,
        blur_iterations = 3,
        chromatic_aberration = 0.3,
        fresnel_strength = 0.9,
        edge_thickness = 0.08,
        lens_distortion = 0.9,
        brightness = 1.0,
        contrast = 1.7,
        saturation = 1,
        vibrancy = 0.8,
        vibrancy_darkness = 1,
        adaptive_boost = 0.5,
    })

    hg.preset("apple", {
        blur_strength = 2.2,
        blur_iterations = 3,
        refraction_strength = 0.55,
        chromatic_abberation = 0.3,
        fresnel_strength = 0.5,
        specular_strength = 0.75,
        edge_thickness = 0.05,
        lens_distortion = 0.3,
        dark = {
            brightness = 0.82,
            contrast = 0.9,
            saturation = 0.8,
            vibrancy = 0.15,
            adaptive_dim = 0.4,
        },
        light = {
            brightness = 1.12,
            contrast = 0.92,
            saturation = 0.85,
            vibrancy = 0.12,
            adaptive_boost = 0.4,
        }
    })

    hg.config({
        enabled = true,
        default_theme = "light",
        default_preset = "glass",
        layers = {
            enabled = false,
        },
    })
end
