### 短剣の左クリック検知

# クリティカル時のダメージ表示用
  execute if entity @s[tag=CriticalHit] run scoreboard players set $DamageColor Temporary 4
# ノックバック
  scoreboard players set $XPower Temporary 80
  scoreboard players set $YPower Temporary 80
# 当たり判定
  execute positioned ^ ^ ^1 if entity @e[type=#mob:mobs,tag=Enemy,distance=..2,limit=1] as @e[type=#mob:mobs,tag=Enemy,distance=..5,sort=nearest,limit=2] if entity @s[distance=..2] positioned ^ ^ ^1 if entity @s[distance=..2] run function attack:left_click/dagger/hit
  execute positioned ^ ^ ^1 unless entity @e[type=#mob:mobs,tag=Enemy,distance=..2,limit=1] positioned ^ ^ ^1 as @e[type=#mob:mobs,tag=Enemy,distance=..5,sort=nearest,limit=2] if entity @s[distance=..2] run function attack:left_click/dagger/hit
# 演出(短剣通常)
  function attack:left_click/dagger/effect/_
# リセット
  function core:trigger/sneak/reset
  scoreboard players reset $DamageColor
  scoreboard players reset $XPower
  scoreboard players reset $YPower