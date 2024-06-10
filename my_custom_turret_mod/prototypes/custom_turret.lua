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
        type = "recipe",
        name = "custom-turret",
        enabled = false,
        energy_required = 8,
        ingredients =
        {
            {"iron-gear-wheel", 10},
            {"copper-plate", 20},
            {"iron-plate", 20}
        },
        result = "custom-turret"
    }
})
