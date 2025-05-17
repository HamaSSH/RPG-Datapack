#> player:ui/shield
# 盾のUI表示

execute if score @s MaxShield matches 1 if score @s Shield matches ..0 run data modify storage player:ui shield set value '"\\uF824\\uE094\\uF808\\uF806"'
execute if score @s MaxShield matches 1 if score @s Shield matches 1.. run data modify storage player:ui shield set value '"\\uF824\\uE095\\uF808\\uF806"'
execute if score @s MaxShield matches 2 if score @s Shield matches ..0 run data modify storage player:ui shield set value '"\\uF822\\uE094\\uF806\\uE094\\uF809"'
execute if score @s MaxShield matches 2 if score @s Shield matches 1 run data modify storage player:ui shield set value '"\\uF822\\uE095\\uF806\\uE094\\uF809"'
execute if score @s MaxShield matches 2 if score @s Shield matches 2.. run data modify storage player:ui shield set value '"\\uF822\\uE095\\uF806\\uE095\\uF809"'
execute if score @s MaxShield matches 3 if score @s Shield matches ..0 run data modify storage player:ui shield set value '"\\uF821\\uE094\\uF807\\uE094\\uF807\\uE094\\uF809\\uF801"'
execute if score @s MaxShield matches 3 if score @s Shield matches 1 run data modify storage player:ui shield set value '"\\uF821\\uE095\\uF807\\uE094\\uF807\\uE094\\uF809\\uF801"'
execute if score @s MaxShield matches 3 if score @s Shield matches 2 run data modify storage player:ui shield set value '"\\uF821\\uE095\\uF807\\uE095\\uF807\\uE094\\uF809\\uF801"'
execute if score @s MaxShield matches 3 if score @s Shield matches 3.. run data modify storage player:ui shield set value '"\\uF821\\uE095\\uF807\\uE095\\uF807\\uE095\\uF809\\uF801"'