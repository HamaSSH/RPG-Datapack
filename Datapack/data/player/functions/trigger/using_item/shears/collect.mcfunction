#> player:trigger/using_item/shears/collect
# 検知出来たブロックを壊す

scoreboard players add @s UsingShears 1
execute store result storage asset:material ID int 1 run scoreboard players get @e[type=armor_stand,tag=Material,distance=..0.01,limit=1] MaterialID
function #asset:material/collect/shears
data remove storage asset:material ID