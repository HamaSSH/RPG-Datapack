#> player:combat/main/wand/bullet/detected
# 魔法の弾の攻撃範囲内にモブが検知されたら

tag @s add Attacker
data modify entity @s Age set value 19
execute as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,dx=0] run function mob:hitbox