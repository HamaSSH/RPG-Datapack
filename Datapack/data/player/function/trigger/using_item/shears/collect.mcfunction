#> player:trigger/using_item/shears/collect
# 検知出来たブロックを壊す

scoreboard players add @s UsingShears 1
data modify storage asset:material ID set from entity @e[type=armor_stand,tag=Material,distance=..0.01,limit=1] ArmorItems[3].components.minecraft:custom_data.ID
function #asset:material/collect/shears
data remove storage asset:material ID