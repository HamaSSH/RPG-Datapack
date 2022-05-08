# 魔法使用
    execute if predicate magic:offhand run function magic:init
# 頭装備
    execute if predicate core:right_click/mainhand run function core:trigger/right_click/equip_mainhand
    execute if predicate core:right_click/offhand run function core:trigger/right_click/equip_offhand
# リセット
    scoreboard players reset @s right_click