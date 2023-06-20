##########
#>
#

# 魔法使用
    execute if predicate magic:offhand run function magic:trigger/_
# 頭装備
    execute if predicate core:right_click/mainhand run function core:trigger/right_click/equip_mainhand
    execute if predicate core:right_click/offhand run function core:trigger/right_click/equip_offhand

# リセット
    advancement revoke @s only core:trigger/right_click
    scoreboard players reset @s right_click