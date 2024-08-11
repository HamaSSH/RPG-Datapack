#> asset:magic/5503.wind_burst/tick/detected
# 魔法の攻撃範囲内にモブが検知されたら

tag @s add Attacker
execute as @e[type=#lib:every_mob,tag=Enemy,dx=4,dy=4,dz=4] run function mob:hitbox