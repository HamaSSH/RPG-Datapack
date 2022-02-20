### 槍の左クリック検知

# 当たり判定
  execute positioned as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..5] positioned ^ ^ ^1000 facing entity @s feet positioned ^ ^ ^1000 positioned ~ ~1.64 ~ as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add Hit
  execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,tag=!HurtTime,distance=..5] run function attack:left_click/fail
# 演出(槍失敗)
  particle minecraft:crit ^ ^1.7 ^ 0.25 0.1 0.25 0.2 1
  particle minecraft:crit ^ ^1.7 ^2 0.25 0.1 0.25 0.2 1
  particle minecraft:crit ^ ^1.7 ^4 0.25 0.1 0.25 0.2 1
  playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0