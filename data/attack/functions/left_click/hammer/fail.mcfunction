### ハンマーの左クリック検知

# 当たり判定
  execute positioned ^ ^ ^1 if entity @e[type=#mob:mobs,tag=Enemy,distance=..2,limit=1] as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..5,sort=nearest,limit=5] if entity @s[distance=..3] positioned ^ ^ ^1 if entity @s[distance=..2] run function attack:left_click/fail
  execute positioned ^ ^ ^1 unless entity @e[type=#mob:mobs,tag=Enemy,distance=..2,limit=1] positioned ^ ^ ^1 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..5,sort=nearest,limit=5] if entity @s[distance=..2.4] run function attack:left_click/fail
# 演出
  playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0
# リセット
  scoreboard players reset $XPower
  scoreboard players reset $YPower