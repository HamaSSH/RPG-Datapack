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

# 演出(ｺﾞｷｨ)
    playsound resource:custom.weapon.crit master @s

# リセット
    scoreboard players reset $CritMultiplier Temporary