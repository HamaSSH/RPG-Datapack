#> player:status/crt/damage
# クリティカルダメージ補正

tag @s add CriticalHit

# 会心攻撃力上昇率 DmgDealt = DmgDealt * (CRT/10 + 130) / 100
    # = DmgDealt * (CRT + 1300) / 1000
        scoreboard players operation $CritMultiplier Temporary = @s CRT
        scoreboard players add $CritMultiplier Temporary 1300
        scoreboard players operation @s DmgDealt *= $CritMultiplier Temporary
    # 一の位四捨五入
        scoreboard players add @s DmgDealt 500
        scoreboard players operation @s DmgDealt /= #1000 Constant

# 会心成功時のハンターのパッシブ
    execute if predicate player:class/is_hunter run function player:class/hunter/passive/skill4/init

# 演出(ｺﾞｷｨ)
    tag @s add CrtSFX
    execute if predicate player:hold_weapon/bow/leftclick run tag @s remove CrtSFX
    execute if entity @s[tag=CrtSFX] run function player:status/crt/sfx

# リセット
    scoreboard players reset $CritMultiplier Temporary
    tag @s remove CrtSFX