#> asset:magic/5503.swift/player/_
# 魔法を発動した後のプレイヤーのtick処理

scoreboard players add @s 5503.Tick 1
particle sweep_attack ~ ~ ~ 0.3 0 0.3 0 1 force
execute if score @s 5503.Tick matches 200 run scoreboard players reset @s 5503.Tick