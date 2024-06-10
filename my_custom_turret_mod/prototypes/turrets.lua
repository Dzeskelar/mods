local function gun_turret_extension(inputs)
    return {
        filename = "__my_custom_turret_mod__/graphics/entity/gun-turret/gun-turret-raising.png",
        priority = "medium",
        width = 66,
        height = 64,
        direction_count = 4,
        frame_count = inputs.frame_count or 5,
        line_length = inputs.line_length or 0,
        run_mode = inputs.run_mode or "forward",
        shift = util.by_pixel(0, -26),
        axially_symmetrical = false,
        hr_version = {
            filename = "__my_custom_turret_mod__/graphics/entity/gun-turret/hr-gun-turret-raising.png",
            priority = "medium",
            width = 130,
            height = 126,
            direction_count = 4,
            frame_count = inputs.frame_count or 5,
            line_length = inputs.line_length or 0,
            run_mode = inputs.run_mode or "forward",
            shift = util.by_pixel(0, -26.5),
            axially_symmetrical = false,
            scale = 0.5
        }
    }
end

local function gun_turret_extension_shadow(inputs)
    return {
        filename = "__my_custom_turret_mod__/graphics/entity/gun-turret/gun-turret-raising-shadow.png",
        width = 126,
        height = 62,
        direction_count = 4,
        frame_count = inputs.frame_count or 5,
        line_length = inputs.line_length or 0,
        run_mode = inputs.run_mode or "forward",
        shift = util.by_pixel(19, 2),
        axially_symmetrical = false,
        draw_as_shadow = true,
        hr_version = {
            filename = "__my_custom_turret_mod__/graphics/entity/gun-turret/hr-gun-turret-raising-shadow.png",
            width = 250,
            height = 124,
            direction_count = 4,
            frame_count = inputs.frame_count or 5,
            line_length = inputs.line_length or 0,
            run_mode = inputs.run_mode or "forward",
            shift = util.by_pixel(19, 2.5),
            axially_symmetrical = false,
            draw_as_shadow = true,
            scale = 0.5
        }
    }
end

data:extend({
    {
        type = "ammo-turret",
        name = "custom-turret",
        icon = "__base__/graphics/icons/gun-turret.png",
        icon_size = 64,
        flags = {"placeable-player", "placeable-enemy", "player-creation"},
        minable = {mining_time = 0.5, result = "custom-turret"},
        max_health = 400,
        corpse = "small-remnants",
        collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
        selection_box = {{-1, -1}, {1, 1}},
        rotation_speed = 0.015,
        preparing_speed = 0.08,
        folding_speed = 0.08,
        call_for_help_radius = 40,
        attacking_speed = 1,
        folded_animation = {
            layers = {
                gun_turret_extension{frame_count=1, line_length = 1},
                gun_turret_extension_shadow{frame_count=1, line_length = 1}
            }
        },
        preparing_animation = {
            layers = {
                gun_turret_extension{},
                gun_turret_extension_shadow{}
            }
        },
        folding_animation = {
            layers = {
                gun_turret_extension{run_mode = "backward"},
                gun_turret_extension_shadow{run_mode = "backward"}
            }
        },
        attack_parameters = {
            type = "projectile",
            ammo_category = "bullet",
            cooldown = 6,
            projectile_creation_distance = 1.39375,
            projectile_center = {0, 0.2},
            damage_modifier = 1,
            shell_particle = {
                name = "shell-particle",
                direction_deviation = 0.1,
                speed = 0.1,
                speed_deviation = 0.03,
                center = {0, 0.6},
                creation_distance = -1.925,
                starting_frame_speed = 0.2,
                starting_frame_speed_deviation = 0.1
            },
            range = 18,
            sound = {
                {
                    filename = "__base__/sound/fight/tank-cannon.ogg",
                    volume = 0.75
                }
            }
        },
        inventory_size = 1,
        automated_ammo_count = 10
    }
})
