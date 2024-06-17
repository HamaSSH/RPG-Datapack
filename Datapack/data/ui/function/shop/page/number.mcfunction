#> ui:shop/page/number
# ページごとで異なるtick処理を呼び出す

tag @s add TickOnce
scoreboard players add @s UIPage 0
execute if entity @s[tag=TickOnce] if score @s UIPage matches 0 run function ui:shop/page/changed
execute if entity @s[tag=TickOnce] if score @s UIPage matches 1 run function ui:shop/sell/page/changed
execute if entity @s[tag=TickOnce] if score @s UIPage matches 2..7 run function ui:shop/buy/page/changed