#> player:ui/magic/fire
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
    execute if score $Time Temporary matches ..0 run data modify storage player:ui magic set value '{"text":"\\uE200"}'
    execute if score $Time Temporary matches 1 run data modify storage player:ui magic set value '{"text":"\\uE201"}'
    execute if score $Time Temporary matches 2 run data modify storage player:ui magic set value '{"text":"\\uE202"}'
    execute if score $Time Temporary matches 3 run data modify storage player:ui magic set value '{"text":"\\uE203"}'
    execute if score $Time Temporary matches 4 run data modify storage player:ui magic set value '{"text":"\\uE204"}'
    execute if score $Time Temporary matches 5 run data modify storage player:ui magic set value '{"text":"\\uE205"}'
    execute if score $Time Temporary matches 6 run data modify storage player:ui magic set value '{"text":"\\uE206"}'
    execute if score $Time Temporary matches 7 run data modify storage player:ui magic set value '{"text":"\\uE207"}'
    execute if score $Time Temporary matches 8 run data modify storage player:ui magic set value '{"text":"\\uE208"}'
    execute if score $Time Temporary matches 9 run data modify storage player:ui magic set value '{"text":"\\uE209"}'
    execute if score $Time Temporary matches 10 run data modify storage player:ui magic set value '{"text":"\\uE20A"}'
    execute if score $Time Temporary matches 11 run data modify storage player:ui magic set value '{"text":"\\uE20B"}'
    execute if score $Time Temporary matches 12 run data modify storage player:ui magic set value '{"text":"\\uE20C"}'
    execute if score $Time Temporary matches 13 run data modify storage player:ui magic set value '{"text":"\\uE20D"}'
    execute if score $Time Temporary matches 14 run data modify storage player:ui magic set value '{"text":"\\uE20E"}'
    execute if score $Time Temporary matches 15.. run data modify storage player:ui magic set value '{"text":"\\uE20F"}'

# リセット
    scoreboard players reset $Cooldown Temporary
    scoreboard players reset $UsedTick Temporary
    scoreboard players reset $Time Temporary