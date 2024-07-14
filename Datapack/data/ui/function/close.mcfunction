#> ui:close
# UIを閉じた際の処理

# 不要なアイテムをclear
    clear @a glass_bottle
    clear @a *[custom_data~{ui:{item_type:"blank"}}]
    clear @a *[custom_data~{ui:{item_type:"goods"}}]

# UI閉じ検知の後処理
    execute unless predicate player:armor/helmet run item replace entity @s armor.head with air
    execute if predicate player:armor/helmet run function ui:close_detector/remove

# UIに残されたアイテムを返却
    execute as @e[type=interaction,tag=UIInteraction,distance=..0.01,limit=1] run function ui:cleanup

# 職業変更書見台
    execute if entity @s[tag=ClassLectern] run trigger ChangeClass set -1
    execute if entity @s[tag=ClassLectern] run tag @s remove ClassLectern

# リセット
    tag @s remove UsingUI
    advancement revoke @s only ui:close