data:extend({
    {
        type = "item",
        name = "custom-turret",
        icon = "__base__/graphics/icons/gun-turret.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "defensive-structure",
        order = "b[turret]-a[gun-turret]",
        place_result = "custom-turret",
        stack_size = 50
    },
    {
        type = "selection-tool",
        name = "custom-turret-tool",
        icon = "__base__/graphics/icons/gun-turret.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"hidden", "only-in-cursor"},
        subgroup = "tool",
        order = "c[automated-construction]-a[blueprint]",
        stack_size = 1,
        selection_color = {r = 0.3, g = 0.9, b = 0.3},
        alt_selection_color = {r = 0.9, g = 0.9, b = 0.3},
        selection_mode = {"blueprint"},
        alt_selection_mode = {"blueprint"},
        selection_cursor_box_type = "entity",
        alt_selection_cursor_box_type = "entity",
    }
})
