#> asset:mob/dummy/tick
# tick時の固有処理

scoreboard players add @s MobTick 1
execute if score @s MobTick matches 20.. run particle witch ~ ~ ~ 0.2 0.2 0.2 0 3 force
execute if score @s MobTick matches 40.. run scoreboard players reset @s MobTick
