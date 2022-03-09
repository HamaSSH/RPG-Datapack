### 槍の左クリック検知

# 当たり判定
  execute anchored eyes positioned ^ ^ ^ run function attack:main/spear/rec
  execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,tag=!HurtTime,distance=..4.5] run function attack:main/fail
# 演出(槍失敗)
  particle minecraft:crit ^ ^1.7 ^ 0.25 0.1 0.25 0.2 1
  particle minecraft:crit ^ ^1.7 ^2 0.25 0.1 0.25 0.2 1
  particle minecraft:crit ^ ^1.7 ^4 0.25 0.1 0.25 0.2 1
  playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0