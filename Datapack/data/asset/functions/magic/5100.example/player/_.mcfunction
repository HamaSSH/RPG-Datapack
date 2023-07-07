#> asset:magic/5100.example/player/_
# 魔法を発動した後のプレイヤーのtick処理

scoreboard players add @s 5100.Tick 1
execute if score @s 5100.Tick matches 1..20 run playsound ui.button.click master @a ~ ~ ~ 0.2 2
execute if score @s 5100.Tick matches 40 run scoreboard players reset @s 5100.Tick