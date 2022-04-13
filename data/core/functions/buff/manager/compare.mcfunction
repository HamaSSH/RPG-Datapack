# 比較先のバフを格納
    data modify storage core:temp Data.buff set from storage core:temp Data.newBuff[0]
    data modify storage core:temp Data.oldBuff set from entity @s data.buff
    execute store result score $NewBonus Temporary run data get storage core:temp Data.buff.value
    execute store result score $Bonus Temporary run data get storage core:temp Data.oldBuff.value
# バフ置き換えをするか検知
    scoreboard players operation $ReplaceBuff Temporary = $NewBonus Temporary
    scoreboard players operation $ReplaceBuff Temporary *= $Bonus Temporary
    execute if score $ReplaceBuff Temporary matches ..0 run tag @s add ReplaceBuff
    execute if score $Bonus Temporary matches 1.. if score $Bonus Temporary <= $NewBonus Temporary run tag @s add ReplaceBuff
    execute if score $Bonus Temporary matches ..-1 if score $Bonus Temporary >= $NewBonus Temporary run tag @s add ReplaceBuff
# バフ置き換え
    data modify storage core:temp Data.compareBuff set from storage core:temp Data.oldBuff.bonus
    execute store success score $BonusMatched Temporary run data modify storage core:temp Data.compareBuff set from storage core:temp Data.buff.bonus
    execute if score $BonusMatched Temporary matches 0 unless entity @s[tag=ReplaceBuff] run scoreboard players set $KillNewBuff Temporary 1
    execute if score $BonusMatched Temporary matches 0 if entity @s[tag=ReplaceBuff] run function core:buff/manager/replace
# リセット
    data remove storage core:temp Data.buff
    data remove storage core:temp Data.oldBuff
    data remove storage core:temp Data.compareBuff
    scoreboard players reset $NewBonus
    scoreboard players reset $Bonus
    scoreboard players reset $ReplaceBuff
    scoreboard players reset $BonusMatched
    tag @s remove ReplaceBuff