#> player:combat/main/wand/detected
# 魔法の弾の攻撃範囲内にモブが検知されたら

data modify entity @s Age set value 18
execute as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,dx=0] run tag @s add Hit