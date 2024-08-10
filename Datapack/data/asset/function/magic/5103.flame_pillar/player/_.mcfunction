#> asset:magic/5103.flame_pillar/player/_
# 魔法を発動した後のプレイヤーのtick処理

# scoreboard players operation $PlayerID Temporary = @s PlayerID
# execute as @e[type=armor_stand,tag=5103.PillarOrigin] if score @s PlayerID = $PlayerID Temporary at @s run function asset:magic/5103.flame_pillar/tick/pillar/origin

# リセット
    # scoreboard players reset $PlayerID Temporary