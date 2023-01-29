# クールダウンの計算
    execute store result score $Cooldown Temporary run data get storage actionbar:temp offhand.tag.magic.cooldown
    execute store result score $TimeUsed Temporary run data get storage actionbar:temp offhand.tag.gametime
    execute store result score $Time Temporary run time query gametime
    execute if score @s cdr matches 1.. run function player:status/cd/reduction
    scoreboard players operation $Time Temporary -= $TimeUsed Temporary
    scoreboard players operation $Time Temporary *= #15 Constant
    scoreboard players operation $Time Temporary /= $Cooldown Temporary
# CD表示
    execute if score $Time Temporary matches ..0 run data modify storage actionbar:temp iconR set value '{"text":"\\uE0E0"}'
    execute if score $Time Temporary matches 1 run data modify storage actionbar:temp iconR set value '{"text":"\\uE0E1"}'
    execute if score $Time Temporary matches 2 run data modify storage actionbar:temp iconR set value '{"text":"\\uE0E2"}'
    execute if score $Time Temporary matches 3 run data modify storage actionbar:temp iconR set value '{"text":"\\uE0E3"}'
    execute if score $Time Temporary matches 4 run data modify storage actionbar:temp iconR set value '{"text":"\\uE0E4"}'
    execute if score $Time Temporary matches 5 run data modify storage actionbar:temp iconR set value '{"text":"\\uE0E5"}'
    execute if score $Time Temporary matches 6 run data modify storage actionbar:temp iconR set value '{"text":"\\uE0E6"}'
    execute if score $Time Temporary matches 7 run data modify storage actionbar:temp iconR set value '{"text":"\\uE0E7"}'
    execute if score $Time Temporary matches 8 run data modify storage actionbar:temp iconR set value '{"text":"\\uE0E8"}'
    execute if score $Time Temporary matches 9 run data modify storage actionbar:temp iconR set value '{"text":"\\uE0E9"}'
    execute if score $Time Temporary matches 10 run data modify storage actionbar:temp iconR set value '{"text":"\\uE0EA"}'
    execute if score $Time Temporary matches 11 run data modify storage actionbar:temp iconR set value '{"text":"\\uE0EB"}'
    execute if score $Time Temporary matches 12 run data modify storage actionbar:temp iconR set value '{"text":"\\uE0EC"}'
    execute if score $Time Temporary matches 13 run data modify storage actionbar:temp iconR set value '{"text":"\\uE0ED"}'
    execute if score $Time Temporary matches 14 run data modify storage actionbar:temp iconR set value '{"text":"\\uE0EE"}'
    execute if score $Time Temporary matches 15.. run data modify storage actionbar:temp iconR set value '{"text":"\\uE0EF"}'
# リセット
    scoreboard players reset $Cooldown
    scoreboard players reset $TimeUsed
    scoreboard players reset $Time