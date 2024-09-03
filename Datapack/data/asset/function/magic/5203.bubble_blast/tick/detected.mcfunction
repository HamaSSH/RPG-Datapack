#> asset:magic/5203.bubble_blast/tick/detected
# 魔法の攻撃範囲内にモブが検知されたら

tag @s add Attacker
execute as @e[type=#lib:every_mob,tag=Enemy,dx=0,sort=nearest,limit=1] run tag @s add Hit