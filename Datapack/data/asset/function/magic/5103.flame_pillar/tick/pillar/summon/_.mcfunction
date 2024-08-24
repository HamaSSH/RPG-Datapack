#> asset:magic/5103.flame_pillar/tick/pillar/summon/_
# フレイムピラーの召喚

# 魔法の弾の召喚
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    scoreboard players operation $DmgDealt Temporary = @s DmgDealt
    scoreboard players operation $MagicID Temporary = @s MagicID
    execute summon armor_stand run function asset:magic/5103.flame_pillar/tick/pillar/init

# 演出
    playsound resource:custom.firecharge.use master @a ~ ~ ~ 0.2 1.4

# リセット
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $DmgDealt Temporary
    scoreboard players reset $MagicID Temporary