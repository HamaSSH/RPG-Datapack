# 比較先のバフを格納
    data modify storage core:temp Data.buff set from storage core:temp Data.newBuff[0]
    data modify storage core:temp Data.compareBuff set from entity @s data.buff
    execute store result score $Bonus Temporary run data get storage core:temp Data.buff.value
    execute store result score $CompareBonus Temporary run data get storage core:temp Data.compareBuff.value
# バフの数値をいじったり
    
# バフの種類が一致した場合の処理
    execute if data storage core:temp Data.buff{bonus:"hp"} if data storage core:temp Data.compareBuff{bonus:"hp"} run tag @s add ReplaceCheck
    execute if data storage core:temp Data.buff{bonus:"mp"} if data storage core:temp Data.compareBuff{bonus:"mp"} run tag @s add ReplaceCheck
    execute if data storage core:temp Data.buff{bonus:"hp_regen"} if data storage core:temp Data.compareBuff{bonus:"hp_regen"} run tag @s add ReplaceCheck
    execute if data storage core:temp Data.buff{bonus:"mp_regen"} if data storage core:temp Data.compareBuff{bonus:"mp_regen"} run tag @s add ReplaceCheck
    execute if data storage core:temp Data.buff{bonus:"ad"} if data storage core:temp Data.compareBuff{bonus:"ad"} run tag @s add ReplaceCheck
    execute if data storage core:temp Data.buff{bonus:"ap"} if data storage core:temp Data.compareBuff{bonus:"ap"} run tag @s add ReplaceCheck
    execute if data storage core:temp Data.buff{bonus:"dex"} if data storage core:temp Data.compareBuff{bonus:"dex"} run tag @s add ReplaceCheck
    execute if data storage core:temp Data.buff{bonus:"def"} if data storage core:temp Data.compareBuff{bonus:"def"} run tag @s add ReplaceCheck
    execute if data storage core:temp Data.buff{bonus:"spd"} if data storage core:temp Data.compareBuff{bonus:"spd"} run tag @s add ReplaceCheck
    execute if data storage core:temp Data.buff{bonus:"crt"} if data storage core:temp Data.compareBuff{bonus:"crt"} run tag @s add ReplaceCheck
    execute if data storage core:temp Data.buff{bonus:"luk"} if data storage core:temp Data.compareBuff{bonus:"luk"} run tag @s add ReplaceCheck
    tellraw @a ["bonus ",{"score":{"name": "$Bonus","objective": "Temporary"}}]
    tellraw @a ["comparebonus ",{"score":{"name": "$CompareBonus","objective": "Temporary"}}]
# バフの置き換え
    execute if entity @s[tag=ReplaceCheck] if score $CompareBonus Temporary > $Bonus Temporary run scoreboard players set $KillNewBuff Temporary 1
    execute if entity @s[tag=ReplaceCheck] if score $CompareBonus Temporary <= $Bonus Temporary run function core:buff/manager/replace
# リセット
    data remove storage core:temp Data.compareBuff
    scoreboard players reset $CompareBonus