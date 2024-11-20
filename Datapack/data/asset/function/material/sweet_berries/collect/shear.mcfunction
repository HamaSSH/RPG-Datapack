#> asset:material/sweet_berries/collect/shear
# 採集処理

advancement grant @s only asset:achievement/2.3
scoreboard players reset @s UsingShears
execute as @e[type=armor_stand,tag=Material,distance=..0.01,limit=1] unless entity @s[tag=HasHPScore] run function asset:material/manager/init
execute if score @e[type=armor_stand,tag=Material,distance=..0.01,limit=1] HP matches 1.. run function item:tool/durability/_
execute as @e[type=armor_stand,tag=Material,distance=..0.01,limit=1] if score @s HP matches 1.. run function asset:material/sweet_berries/collect/damage