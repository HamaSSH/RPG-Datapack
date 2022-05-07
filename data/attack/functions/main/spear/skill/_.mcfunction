# 攻撃
    # 与ダメージ計算
        scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
        scoreboard players operation $DmgDealt Temporary *= #4 Constant
        scoreboard players add $DmgDealt Temporary 10
    # クリティカル時のダメージ表示用
        execute if entity @s[tag=CriticalHit] run scoreboard players set $DamageColor Temporary 4
    # ノックバック($XPowerは固定)
        scoreboard players set $XPower Temporary 100
        scoreboard players set $YPower Temporary 150
    # 当たり判定
        execute anchored eyes positioned ^ ^ ^ run function attack:main/spear/skill/rec
    # リセット
        scoreboard players reset $DmgDealt
        scoreboard players reset $DamageColor
        scoreboard players reset $XPower
        scoreboard players reset $YPower