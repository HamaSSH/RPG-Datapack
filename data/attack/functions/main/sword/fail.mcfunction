### 刀剣の左クリック検知

# 当たり判定
  execute positioned as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..4] positioned ^ ^ ^1000 facing entity @s feet positioned ^ ^ ^1000 positioned ~ ~1.64 ~ as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add Hit
  execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,tag=!HurtTime,distance=..4,sort=nearest,limit=2] run function attack:main/fail
  execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,distance=..4] run tag @s remove Hit
# 演出(刀剣失敗)
  particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0.01 1
  playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0