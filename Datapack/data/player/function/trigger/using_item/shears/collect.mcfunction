#> player:trigger/using_item/shears/collect
# 検知出来たブロックをハサミで収穫

scoreboard players add @s UsingShears 1
data modify storage asset:material namespace set value "others"
data modify storage asset:material namespace set from entity @e[type=armor_stand,tag=Material,distance=..0.01,limit=1] ArmorItems[3].components.minecraft:custom_data.namespace
function asset:material/manager/collect with storage asset:material
data remove storage asset:material namespace