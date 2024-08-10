#> asset:magic/5103.flame_pillar/tick/detected
# 魔法の攻撃範囲内にモブが検知されたら

tag @s add Attacker
execute as @e[type=#lib:every_mob,tag=Enemy,dx=1.4,dy=3,dz=1.4] run function mob:hitbox