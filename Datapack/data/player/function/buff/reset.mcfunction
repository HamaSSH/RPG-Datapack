#> player:buff/reset
# 全バフのリセット

# 実行者のみ全バフリセット
    tag @s add BuffOwner
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    execute positioned 0.0 1.0 0.0 as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] if score @s PlayerID = $PlayerID Temporary on passengers run function player:buff/manager/remove

# リセット
    scoreboard players reset $PlayerID Temporary
    tag @s remove BuffOwner
    tag @s remove IsBuffed