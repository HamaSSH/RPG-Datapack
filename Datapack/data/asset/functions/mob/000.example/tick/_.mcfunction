#> asset:mob/000.example/tick/_
# tick時の動作

scoreboard players add @s 000.Tick 1
execute if score @s 000.Tick matches 20.. run particle witch ~ ~ ~ 0.2 0.2 0.2 0 2 force
execute if score @s 000.Tick matches 40 run scoreboard players reset @s 000.Tick