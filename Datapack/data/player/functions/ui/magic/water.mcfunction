#> player:ui/magic/water
# 魔導書のクールダウン表示

# クールダウンの計算
    execute store result score $Cooldown Temporary run data get storage player: Offhand.tag.Magic.Cooldown
    execute store result score $UsedTick Temporary run data get storage player: Offhand.tag.Magic.UsedTick
    execute store result score $Time Temporary run time query gametime

    execute if score @s CDR matches 1.. run function player:status/cd/reduction
    scoreboard players operation $Time Temporary -= $UsedTick Temporary
    scoreboard players operation $Time Temporary *= #15 Constant
    scoreboard players operation $Time Temporary /= $Cooldown Temporary

# CD表示
    execute if score $Time Temporary matches ..0 run data modify storage player:ui magic set value '{"text":"\\uE210"}'
    execute if score $Time Temporary matches 1 run data modify storage player:ui magic set value '{"text":"\\uE211"}'
    execute if score $Time Temporary matches 2 run data modify storage player:ui magic set value '{"text":"\\uE212"}'
    execute if score $Time Temporary matches 3 run data modify storage player:ui magic set value '{"text":"\\uE213"}'
    execute if score $Time Temporary matches 4 run data modify storage player:ui magic set value '{"text":"\\uE214"}'
    execute if score $Time Temporary matches 5 run data modify storage player:ui magic set value '{"text":"\\uE215"}'
    execute if score $Time Temporary matches 6 run data modify storage player:ui magic set value '{"text":"\\uE216"}'
    execute if score $Time Temporary matches 7 run data modify storage player:ui magic set value '{"text":"\\uE217"}'
    execute if score $Time Temporary matches 8 run data modify storage player:ui magic set value '{"text":"\\uE218"}'
    execute if score $Time Temporary matches 9 run data modify storage player:ui magic set value '{"text":"\\uE219"}'
    execute if score $Time Temporary matches 10 run data modify storage player:ui magic set value '{"text":"\\uE21A"}'
    execute if score $Time Temporary matches 11 run data modify storage player:ui magic set value '{"text":"\\uE21B"}'
    execute if score $Time Temporary matches 12 run data modify storage player:ui magic set value '{"text":"\\uE21C"}'
    execute if score $Time Temporary matches 13 run data modify storage player:ui magic set value '{"text":"\\uE21D"}'
    execute if score $Time Temporary matches 14 run data modify storage player:ui magic set value '{"text":"\\uE21E"}'
    execute if score $Time Temporary matches 15.. run data modify storage player:ui magic set value '{"text":"\\uE21F"}'

# リセット
    scoreboard players reset $Cooldown Temporary
    scoreboard players reset $UsedTick Temporary
    scoreboard players reset $Time Temporary