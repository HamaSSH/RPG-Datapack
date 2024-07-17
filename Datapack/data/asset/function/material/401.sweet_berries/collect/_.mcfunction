#> asset:material/401.sweet_berries/collect/_
# 採集処理 #TODO: チョキチョキ実績

advancement grant @s only asset:achievement/2.3
scoreboard players reset @s UsingShears
execute if score @e[type=armor_stand,tag=Material,distance=..0.01,limit=1] HP matches 1.. run function item:tool/durability/_
execute as @e[type=armor_stand,tag=Material,distance=..0.01,limit=1] if score @s HP matches 1.. run function asset:material/401.sweet_berries/collect/damage