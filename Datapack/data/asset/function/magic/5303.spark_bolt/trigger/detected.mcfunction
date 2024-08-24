#> asset:magic/5303.spark_bolt/trigger/detected
# 魔法の攻撃範囲内にモブが検知されたら

tag @s add Attacker
execute as @e[type=#lib:every_mob,tag=Enemy,dx=0] run function mob:hitbox