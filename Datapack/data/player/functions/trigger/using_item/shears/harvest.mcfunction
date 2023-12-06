#> player:trigger/using_item/shears/harvest
# 検知出来たブロックを壊す

scoreboard players add @s UsingShears 1
# execute store result storage asset:material ID int 1 run scoreboard players get @e[type=armor_stand,tag=Harvest,distance=..0.01,limit=1] MaterialID
function #asset:material/harvesting/harvest
# data remove storage asset:material ID