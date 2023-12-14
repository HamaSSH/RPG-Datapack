#> asset:material/401.sweet_berries/collect/_
# 採集処理

function item:tool/durability/_
scoreboard players reset @s UsingShears
execute as @e[type=armor_stand,tag=Material,distance=..0.01,limit=1] run function asset:material/401.sweet_berries/collect/damage