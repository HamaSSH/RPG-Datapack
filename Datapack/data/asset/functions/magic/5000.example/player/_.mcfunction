#> asset:magic/5000.example/player/_
# 魔法を発動した後のプレイヤーのtick処理

scoreboard players add @s 5000.Tick 1
execute if score @s 5000.Tick matches 1..5 run playsound ui.button.click master @a ~ ~ ~ 0.1 2
execute if score @s 5000.Tick matches 40 run scoreboard players reset @s 5000.Tick