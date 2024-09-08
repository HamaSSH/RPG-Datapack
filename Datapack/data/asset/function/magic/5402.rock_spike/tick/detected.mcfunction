#> asset:magic/5402.rock_spike/tick/detected
# 魔法の攻撃範囲内にモブが検知されたら

tag @s add Attacker
execute as @e[type=#lib:every_mob,tag=Enemy,distance=..3.3,limit=4,sort=random] run tag @s add MagicHit