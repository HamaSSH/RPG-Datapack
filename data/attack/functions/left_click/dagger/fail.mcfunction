### 短剣の左クリック検知

# 当たり判定
  execute positioned ^ ^-0.5 ^1 if entity @e[type=#mob:mobs,tag=Enemy,distance=..2,limit=1] as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..5,sort=nearest,limit=2] if entity @s[distance=..2] positioned ^ ^ ^1 if entity @s[distance=..2] run function attack:left_click/fail
  execute positioned ^ ^-0.5 ^1 unless entity @e[type=#mob:mobs,tag=Enemy,distance=..2,limit=1] positioned ^ ^ ^1 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..5,sort=nearest,limit=2] if entity @s[distance=..2] run function attack:left_click/fail
# 演出(短剣失敗)
  particle minecraft:enchanted_hit ^ ^1.4 ^2 0.5 0.1 0.5 0.5 2
  playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0