# 与ダメージ計算
    scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
    scoreboard players operation $DmgDealt Temporary *= #3 Constant
    scoreboard players add $DmgDealt Temporary 10
# クリティカル時のダメージ表示用
    execute if entity @s[tag=CriticalHit] run scoreboard players set $DamageColor Temporary 4
# ノックバック
    scoreboard players set $XPower Temporary 100
    scoreboard players set $YPower Temporary 100
# 当たり判定
    execute as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..4] positioned ^3 ^ ^2.5 if entity @s[distance=..5] positioned ^-6 ^ ^ if entity @s[distance=..5] run function attack:main/hit
# 演出(刀剣溜め)
    function attack:main/sword/skill/effect/_
# リセット
    function core:trigger/sneak/reset
    scoreboard players reset $DmgDealt
    scoreboard players reset $DamageColor
    scoreboard players reset $XPower
    scoreboard players reset $YPower