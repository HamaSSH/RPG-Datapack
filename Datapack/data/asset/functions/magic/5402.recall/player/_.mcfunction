#> asset:magic/5402.recall/player/_
# 魔法を発動した後のプレイヤーのtick処理

scoreboard players add @s 5402.Tick 1
particle reverse_portal ~ ~0.1 ~ 0.8 0 0.8 0.03 25 force
execute if score @s 5402.Tick matches 100 run tp @a[distance=..4] 621 134 -770
execute if score @s 5402.Tick matches 100 run scoreboard players reset @s 5402.Tick