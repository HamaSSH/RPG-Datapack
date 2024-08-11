#> asset:magic/5302.flash/tick/detected
# 魔法の攻撃範囲内にモブが検知されたら

tag @s add Attacker
execute as @e[type=#lib:every_mob,tag=Enemy,tag=!5302.HurtTime,dx=1,dy=1,dz=1] run function mob:hitbox