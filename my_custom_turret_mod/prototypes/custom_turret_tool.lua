if script == nil then
    script = {}
end

local event = require('__stdlib__/stdlib/event/event')


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

local function on_player_selected_area(event)
    if event.item == "custom-turret-tool" then
        for _, entity in pairs(event.entities) do
            if entity.name == "custom-turret" then
                local player = game.players[event.player_index]
                player.opened = entity
                -- Код для открытия GUI
                player.gui.center.clear()
                local frame = player.gui.center.add{type = "frame", caption = "Настройки Турели", direction = "vertical"}
                frame.add{type = "textfield", name = "custom_turret_damage", text = "Урон"}
                frame.add{type = "textfield", name = "custom_turret_range", text = "Дальность"}
                frame.add{type = "button", name = "custom_turret_save", caption = "Сохранить"}
            end
        end
    end
end

Event.register(defines.events.on_player_selected_area, on_player_selected_area)
