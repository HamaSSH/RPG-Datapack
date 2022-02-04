# 攻撃
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
    execute positioned ^ ^ ^1 if entity @e[type=#mob:mobs,tag=Enemy,distance=..2,limit=1] as @e[type=#mob:mobs,tag=Enemy,distance=..5,sort=nearest,limit=4] if entity @s[distance=..2] positioned ^ ^ ^1 if entity @s[distance=..2] run function attack:left_click/hit
    execute positioned ^ ^ ^1 unless entity @e[type=#mob:mobs,tag=Enemy,distance=..2,limit=1] positioned ^ ^ ^1 as @e[type=#mob:mobs,tag=Enemy,distance=..5,sort=nearest,limit=4] if entity @s[distance=..2.4] run function attack:left_click/hit
  # リセット
    function core:trigger/sneak/reset
    scoreboard players reset $DmgDealt
    scoreboard players reset $DamageColor
    scoreboard players reset $XPower
    scoreboard players reset $YPower