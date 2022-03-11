### 槍の左クリック検知

# 当たり判定
  execute anchored eyes positioned ^ ^ ^-0.1 run function attack:main/spear/rec
  execute positioned ~-4.5 ~-4.5 ~-4.5 as @e[type=#mob:mobs,tag=Hit,tag=Enemy,dx=8,dy=8,dz=8] run function attack:main/fail
# 演出(槍失敗)
  particle minecraft:crit ^ ^1.7 ^ 0.25 0.1 0.25 0.2 1
  particle minecraft:crit ^ ^1.7 ^2 0.25 0.1 0.25 0.2 1
  particle minecraft:crit ^ ^1.7 ^4 0.25 0.1 0.25 0.2 1
  playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0