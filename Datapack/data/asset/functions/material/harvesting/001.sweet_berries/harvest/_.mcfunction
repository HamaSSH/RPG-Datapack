#> asset:material/harvesting/001.sweet_berries/harvest/_
# 採集処理

scoreboard players reset @s UsingShears
execute as @e[type=armor_stand,tag=Material,distance=..0.01,limit=1] run function asset:material/harvesting/001.sweet_berries/harvest/damage