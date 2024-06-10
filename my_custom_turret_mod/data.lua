-- Подключение файлов прототипов
require("prototypes.entity.turrets")
require("prototypes.items")
require("prototypes.recipes")
require("prototypes.custom_turret")
require("prototypes.custom_turret_tool")

-- Подключение библиотеки stblib
local Event = require('__stdlib__/stdlib/event/event')

-- Обработчики событий
Event.register(defines.events.on_player_selected_area, require("prototypes.events").on_player_selected_area)
