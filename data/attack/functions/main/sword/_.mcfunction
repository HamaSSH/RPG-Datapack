### 刀剣の左クリック検知

# クリティカル時のダメージ表示用
  execute if entity @s[tag=CriticalHit] run scoreboard players set $DamageColor Temporary 4
# ノックバック
  scoreboard players set $XPower Temporary 100
  scoreboard players set $YPower Temporary 100
# 当たり判定
  execute positioned as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..4] positioned ^ ^ ^1000 facing entity @s feet positioned ^ ^ ^1000 positioned ~ ~1.64 ~ as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add Hit
  execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,tag=!HurtTime,distance=..4,sort=nearest,limit=2] run function attack:main/sword/hit
  execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,distance=..4] run tag @s remove Hit
# 演出(刀剣通常)
  function attack:main/sword/effect/_
# リセット
  function core:trigger/sneak/reset
  scoreboard players reset $DamageColor
  scoreboard players reset $XPower
  scoreboard players reset $YPower