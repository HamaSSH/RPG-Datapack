#> ui:smithing/page/number
# ページごとで異なるtick処理を呼び出す

tag @s add TickOnce
scoreboard players add @s UIPage 0
execute if entity @s[tag=TickOnce] if score @s UIPage matches 0 run function ui:smithing/page/changed
execute if entity @s[tag=TickOnce] if score @s UIPage matches 1 run function ui:smithing/upgrade/page/changed
execute if entity @s[tag=TickOnce] if score @s UIPage matches 2 run function ui:smithing/combine/page/changed