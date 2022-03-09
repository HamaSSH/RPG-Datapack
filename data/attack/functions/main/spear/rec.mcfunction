# 当たり判定タグ付け
  execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run tag @s add Hit
# particle wax_on ~-0.15 ~-0.15 ~-0.15 0 0 0 0 10 force
# particle wax_off ~0.15 ~0.15 ~0.15 0 0 0 0 10 force
# リーチの限界まで再帰
execute if entity @s[distance=..4.5] positioned ^ ^ ^0.3 run function attack:main/spear/rec