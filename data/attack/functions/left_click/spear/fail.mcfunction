### 槍の左クリック検知

# 当たり判定
  execute positioned ^ ^ ^2 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..5,sort=nearest,limit=10] positioned ^10 ^ ^ if entity @s[distance=..10.7] positioned ^-20 ^ ^ if entity @s[distance=..10.7] run function attack:left_click/fail
# 演出
  particle minecraft:crit ^ ^1.7 ^ 0.25 0.1 0.25 0.2 1
  particle minecraft:crit ^ ^1.7 ^2 0.25 0.1 0.25 0.2 1
  particle minecraft:crit ^ ^1.7 ^4 0.25 0.1 0.25 0.2 1
  playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0