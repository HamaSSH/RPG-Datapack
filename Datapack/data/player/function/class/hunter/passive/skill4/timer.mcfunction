#> player:class/hunter/passive/skill4/timer
# パッシブスキル効果時間

scoreboard players remove @s HunterCrtTimer 1
execute if score @s HunterCrtTimer matches 0 run tag @s add StatusUpdate
execute if score @s HunterCrtTimer matches 0 run scoreboard players reset @s HunterCrtTimer