-- control.lua
local mod_gui = require("mod-gui")

script.on_event(defines.events.on_selected_entity_changed, function(event)
    local player = game.players[event.player_index]
    if player.selected and player.selected.name == "custom-turret" then
        create_turret_settings_gui(player)
    else
        destroy_turret_settings_gui(player)
    end
end)

function create_turret_settings_gui(player)
    if player.gui.center.turret_settings_frame then
        player.gui.center.turret_settings_frame.destroy()
    end

    local frame = player.gui.center.add {type = "frame", name = "turret_settings_frame", direction = "vertical"}
    frame.add {type = "label", caption = "Настройки Турели"}
    frame.add {type = "textfield", name = "attack_speed", caption = "Скорострельность"}
    frame.add {type = "textfield", name = "range", caption = "Дальность"}
    frame.add {type = "button", name = "save_turret_settings", caption = "Сохранить"}
end

function destroy_turret_settings_gui(player)
    if player.gui.center.turret_settings_frame then
        player.gui.center.turret_settings_frame.destroy()
    end
end

script.on_event(defines.events.on_gui_click, function(event)
    if event.element.name == "save_turret_settings" then
        local player = game.players[event.player_index]
        local turret = player.selected
        if turret and turret.name == "custom-turret" then
            local attack_speed = tonumber(player.gui.center.turret_settings_frame.attack_speed.text)
            local range = tonumber(player.gui.center.turret_settings_frame.range.text)
            
            if attack_speed then
                turret.attack_parameters.cooldown = attack_speed
            end
            if range then
                turret.attack_parameters.range = range
            end
            
            player.print("Настройки турели сохранены!")
            destroy_turret_settings_gui(player)
        end
    end
end)
