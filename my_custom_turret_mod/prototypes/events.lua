local M = {}

function M.on_player_selected_area(event)
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

return M
