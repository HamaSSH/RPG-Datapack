#> magic:trigger/mp_check/_
# 魔法の発動に必要なMPのチェック

# 十分なMPがあるか検知
    execute store result score $MPCost Temporary run data get storage magic: Data.MPCost
    execute unless score @s mp >= $MPCost Temporary run function magic:trigger/mp_check/fail
    execute if score @s mp >= $MPCost Temporary run function magic:trigger/mp_check/success

# リセット
    function core:trigger/sneak/reset
    scoreboard players reset $MPCost