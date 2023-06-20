#> magic:trigger/cd_check/_
# 魔法のクールダウンのチェック

# クールダウンの計算
    execute store result score $Cooldown Temporary run data get storage magic: Data.Cooldown
    execute if score @s cdr matches 1.. run function player:status/cd/reduction
    execute store result score $TimeUsed Temporary run data get storage magic: Data.UsedTick
    execute store result score $Time Temporary run time query gametime
    scoreboard players operation $Time Temporary -= $TimeUsed Temporary
# クールダウンが終わっていたらタグ付け
    execute unless score $Time Temporary >= $Cooldown Temporary run function magic:trigger/cd_check/fail
    execute if score $Time Temporary >= $Cooldown Temporary run tag @s add CDCheck

# リセット
    scoreboard players reset $Cooldown
    scoreboard players reset $TimeUsed
    scoreboard players reset $Time