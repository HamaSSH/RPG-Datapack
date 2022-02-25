# 攻撃
  # 与ダメージ計算
    scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
    scoreboard players operation $DmgDealt Temporary *= #4 Constant
    scoreboard players add $DmgDealt Temporary 10
  # クリティカル時のダメージ表示用
    execute if entity @s[tag=CriticalHit] run scoreboard players set $DamageColor Temporary 4
  # ノックバック
    scoreboard players set $XPower Temporary 100
    scoreboard players set $YPower Temporary 400
  # 当たり判定
    execute positioned ^ ^ ^3 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..6] positioned ^9.6 ^ ^ if entity @s[distance=..11] positioned ^-19.2 ^ ^ if entity @s[distance=..11] run function attack:left_click/hit
  # リセット
    function core:trigger/sneak/reset
    scoreboard players reset $DmgDealt
    scoreboard players reset $DamageColor
    scoreboard players reset $XPower
    scoreboard players reset $YPower