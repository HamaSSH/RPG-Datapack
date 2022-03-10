### 短剣の左クリック検知

# 当たり判定
  execute anchored eyes positioned ^ ^ ^-0.1 run function attack:main/dagger/rec
  execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,tag=!HurtTime,distance=..3.5,sort=nearest,limit=2] run function attack:main/fail
  execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,distance=..3.5] run tag @s remove Hit
# 演出(短剣失敗)
  particle minecraft:enchanted_hit ^ ^1.4 ^2 0.5 0.1 0.5 0.5 2
  playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0