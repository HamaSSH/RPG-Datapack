#> player:status/mp/check/_
# 行動に必要なMPを持っているかの確認

# 失敗しなければ成功なんです
    tag @s add MPCheckPass

# 十分なMPを持っているか検知
    execute store result score $MPCost Temporary run data get storage player: MPCost
    execute if score $MPCost Temporary > @s MP run function player:status/mp/check/fail
    execute if score $MPCost Temporary <= @s MP run scoreboard players operation @s MP -= $MPCost Temporary

# リセット
    scoreboard players reset $MPCost Temporary