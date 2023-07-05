#> player:status/cd/check/_
# 魔法のクールダウンが終わっているかの確認

# 失敗しなければ成功なんです
    tag @s add CDCheckPass

# 以前行動したtickと今を比較
    execute store result score $TimeUsed Temporary run data get storage player: Maguc.UsedTick
    execute store result score $Time Temporary run time query gametime
    scoreboard players operation $Time Temporary -= $TimeUsed Temporary

# クールダウンの計算
    execute store result score $Cooldown Temporary run data get storage player: Maguc.Cooldown
    execute if score @s CDR matches 1.. run function player:status/cd/reduction

# クールダウンが終わっているか
    execute unless score $Time Temporary >= $Cooldown Temporary run function player:status/cd/check/fail

# リセット
    scoreboard players reset $TimeUsed Temporary
    scoreboard players reset $Time Temporary
    scoreboard players reset $Cooldown Temporary