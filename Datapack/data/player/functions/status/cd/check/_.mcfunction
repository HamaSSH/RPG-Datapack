##########
#>
#

# クールダウン計算
    data modify storage magic:temp offhand set from entity @s Inventory[{Slot:-106b}]
    execute store result score $Cooldown Temporary run data get storage magic:temp offhand.tag.magic.cooldown
    execute store result score $TimeUsed Temporary run data get storage magic:temp offhand.tag.gametime
    execute store result score $Time Temporary run time query gametime
    execute if score @s cdr matches 1.. run function player:status/cd/reduction
    scoreboard players operation $Time Temporary -= $TimeUsed Temporary
# 満たしていたらタグ付け
    execute unless score $Time Temporary >= $Cooldown Temporary run function player:status/cd/check/fail
    execute if score $Time Temporary >= $Cooldown Temporary run tag @s add CDCheck
# リセット
    data remove storage magic:temp offhand
    scoreboard players reset $Cooldown
    scoreboard players reset $TimeUsed
    scoreboard players reset $Time