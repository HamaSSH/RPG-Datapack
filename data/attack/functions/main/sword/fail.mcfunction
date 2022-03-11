### 刀剣の左クリック検知

# 当たり判定
  execute anchored eyes positioned ^ ^ ^-0.2 run function attack:main/sword/rec
  execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,tag=!HurtTime,distance=..4,sort=nearest,limit=1] run function attack:main/fail
  execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,distance=..8] run tag @s remove Hit
# 演出(刀剣失敗)
  particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0.01 1
  playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0