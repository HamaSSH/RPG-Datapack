##########
#>
#

# 比較先のバフを格納
    data modify storage player:temp Data.buff set from storage player:temp Data.newBuff[0]
    data modify storage player:temp Data.oldBuff set from entity @s data.buff
    execute store result score $NewBonus Temporary run data get storage player:temp Data.buff.value
    execute store result score $Bonus Temporary run data get storage player:temp Data.oldBuff.value
# バフ置き換えをするか検知
    scoreboard players operation $ReplaceBuff Temporary = $NewBonus Temporary
    scoreboard players operation $ReplaceBuff Temporary *= $Bonus Temporary
    execute if score $ReplaceBuff Temporary matches ..0 run tag @s add ReplaceBuff
    execute if score $Bonus Temporary matches 1.. if score $Bonus Temporary <= $NewBonus Temporary run tag @s add ReplaceBuff
    execute if score $Bonus Temporary matches ..-1 if score $Bonus Temporary >= $NewBonus Temporary run tag @s add ReplaceBuff
# バフ置き換え
    data modify storage player:temp Data.compareSource set from storage player:temp Data.oldBuff.source
    data modify storage player:temp Data.compareBuff set from storage player:temp Data.oldBuff.bonus
    execute store success score $SourceMatched Temporary run data modify storage player:temp Data.compareSource set from storage player:temp Data.buff.source
    execute store success score $BonusMatched Temporary run data modify storage player:temp Data.compareBuff set from storage player:temp Data.buff.bonus
    execute if data storage player:temp Data.buff{source:"mob"} run scoreboard players set $SourceMatched Temporary 0
    execute if score $SourceMatched Temporary matches 0 if score $BonusMatched Temporary matches 0 unless entity @s[tag=ReplaceBuff] run scoreboard players set $KillNewBuff Temporary 1
    execute if score $SourceMatched Temporary matches 0 if score $BonusMatched Temporary matches 0 if entity @s[tag=ReplaceBuff] run function player:buff/manager/replace
# リセット
    data remove storage player:temp Data.buff
    data remove storage player:temp Data.oldBuff
    data remove storage player:temp Data.compareSource
    data remove storage player:temp Data.compareBuff
    scoreboard players reset $NewBonus
    scoreboard players reset $Bonus
    scoreboard players reset $ReplaceBuff
    scoreboard players reset $SourceMatched
    scoreboard players reset $BonusMatched
    tag @s remove ReplaceBuff