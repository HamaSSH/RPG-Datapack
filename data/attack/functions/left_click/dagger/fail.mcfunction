### 短剣の左クリック検知

# 当たり判定
  execute positioned as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..3.5] positioned ^ ^ ^1000 facing entity @s feet positioned ^ ^ ^1000 positioned ~ ~1.64 ~ as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add Hit
  execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,tag=!HurtTime,distance=..3.5,sort=nearest,limit=2] run function attack:left_click/fail
  execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,distance=..3.5] run tag @s remove Hit
# 演出(短剣失敗)
  particle minecraft:enchanted_hit ^ ^1.4 ^2 0.5 0.1 0.5 0.5 2
  playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0