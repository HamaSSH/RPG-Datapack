### 刀剣の左クリック検知

# ノックバック
  scoreboard players set $XPower Temporary 100
  scoreboard players set $YPower Temporary 100
# 当たり判定
  execute positioned ^ ^ ^1 if entity @e[type=#mob:mobs,tag=Enemy,distance=..2,limit=1] as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..5,sort=nearest,limit=4] if entity @s[distance=..2] positioned ^ ^ ^1 if entity @s[distance=..2] run function attack:left_click/hit
  execute positioned ^ ^ ^1 unless entity @e[type=#mob:mobs,tag=Enemy,distance=..2,limit=1] positioned ^ ^ ^1 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..5,sort=nearest,limit=4] if entity @s[distance=..2.4] run function attack:left_click/hit
# 演出
  particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0.01 1
  playsound minecraft:custom.sword player @a ~ ~ ~ 1 1
# リセット
  function core:trigger/sneak/reset
  scoreboard players reset $XPower
  scoreboard players reset $YPower