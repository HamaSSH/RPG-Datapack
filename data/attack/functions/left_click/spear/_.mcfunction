### 槍の左クリック検知

# ノックバック
  scoreboard players set $XPower Temporary 100
  scoreboard players set $YPower Temporary 80
# 当たり判定
  execute positioned ^ ^ ^2 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..5,sort=nearest,limit=10] positioned ^10 ^ ^ if entity @s[distance=..10.7] positioned ^-20 ^ ^ if entity @s[distance=..10.7] run function attack:left_click/hit
# 演出
  particle minecraft:crit ^ ^1.7 ^ 0.25 0.1 0.25 0.2 2
  particle minecraft:crit ^ ^1.7 ^2 0.25 0.1 0.25 0.2 3
  particle minecraft:crit ^ ^1.7 ^4 0.25 0.1 0.25 0.2 3
  playsound minecraft:custom.spear master @a ~ ~ ~ 2 1.1
# リセット
  function core:trigger/sneak/reset
  scoreboard players reset $XPower
  scoreboard players reset $YPower