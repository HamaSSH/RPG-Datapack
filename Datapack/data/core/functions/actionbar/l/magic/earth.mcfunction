##########
#>
#

# クールダウンの計算
    execute store result score $Cooldown Temporary run data get storage actionbar:temp offhand.tag.Magic.Cooldown
    execute store result score $TimeUsed Temporary run data get storage actionbar:temp offhand.tag.Magic.UsedTick
    execute store result score $Time Temporary run time query gametime
    execute if score @s cdr matches 1.. run function player:status/cd/reduction
    scoreboard players operation $Time Temporary -= $TimeUsed Temporary
    scoreboard players operation $Time Temporary *= #15 Constant
    scoreboard players operation $Time Temporary /= $Cooldown Temporary
# CD表示
    execute if score $Time Temporary matches ..0 run data modify storage actionbar:temp iconL set value '{"text":"\\uE140"}'
    execute if score $Time Temporary matches 1 run data modify storage actionbar:temp iconL set value '{"text":"\\uE141"}'
    execute if score $Time Temporary matches 2 run data modify storage actionbar:temp iconL set value '{"text":"\\uE142"}'
    execute if score $Time Temporary matches 3 run data modify storage actionbar:temp iconL set value '{"text":"\\uE143"}'
    execute if score $Time Temporary matches 4 run data modify storage actionbar:temp iconL set value '{"text":"\\uE144"}'
    execute if score $Time Temporary matches 5 run data modify storage actionbar:temp iconL set value '{"text":"\\uE145"}'
    execute if score $Time Temporary matches 6 run data modify storage actionbar:temp iconL set value '{"text":"\\uE146"}'
    execute if score $Time Temporary matches 7 run data modify storage actionbar:temp iconL set value '{"text":"\\uE147"}'
    execute if score $Time Temporary matches 8 run data modify storage actionbar:temp iconL set value '{"text":"\\uE148"}'
    execute if score $Time Temporary matches 9 run data modify storage actionbar:temp iconL set value '{"text":"\\uE149"}'
    execute if score $Time Temporary matches 10 run data modify storage actionbar:temp iconL set value '{"text":"\\uE14A"}'
    execute if score $Time Temporary matches 11 run data modify storage actionbar:temp iconL set value '{"text":"\\uE14B"}'
    execute if score $Time Temporary matches 12 run data modify storage actionbar:temp iconL set value '{"text":"\\uE14C"}'
    execute if score $Time Temporary matches 13 run data modify storage actionbar:temp iconL set value '{"text":"\\uE14D"}'
    execute if score $Time Temporary matches 14 run data modify storage actionbar:temp iconL set value '{"text":"\\uE14E"}'
    execute if score $Time Temporary matches 15.. run data modify storage actionbar:temp iconL set value '{"text":"\\uE14F"}'
# リセット
    scoreboard players reset $Cooldown
    scoreboard players reset $TimeUsed
    scoreboard players reset $Time