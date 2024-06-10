data:extend({
    {
        type = "selection-tool",
        name = "custom-turret-tool",
        icon = "__base__/graphics/icons/blueprint.png",
        icon_size = 64,
        subgroup = "tool",
        order = "c[automated-construction]-a[blueprint]",
        stack_size = 1,
        selection_color = { r = 0, g = 1, b = 0 },
        alt_selection_color = { r = 0, g = 1, b = 0 },
        selection_mode = {"buildable-type"},
        alt_selection_mode = {"buildable-type"},
        selection_cursor_box_type = "entity",
        alt_selection_cursor_box_type = "entity",
        entity_filter_mode = "whitelist",
        entity_type_filters = {"ammo-turret"}
    }
})
