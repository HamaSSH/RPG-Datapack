### ハンマーの左クリック検知

# クリティカル時のダメージ表示用
  execute if entity @s[tag=CriticalHit] run scoreboard players set $DamageColor Temporary 4
# ノックバック
  scoreboard players set $XPower Temporary 120
  scoreboard players set $YPower Temporary 150
# 当たり判定
  execute anchored eyes positioned ^ ^ ^ run function attack:main/hammer/rec
  execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,tag=!HurtTime,distance=..4,sort=nearest,limit=1] run function attack:main/hammer/hit
  execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,distance=..8] run tag @s remove Hit
# 演出(ハンマー通常)
  function attack:main/hammer/effect/_
# リセット
  function core:trigger/sneak/reset
  scoreboard players reset $DamageColor
  scoreboard players reset $XPower
  scoreboard players reset $YPower