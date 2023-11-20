#> asset:magic/5501.wind_ball/tick/detected
# 魔法の攻撃範囲内にモブが検知されたら

tag @s add Kill
tag @s add Attacker
execute as @e[type=#lib:every_mob,tag=Enemy,dx=0,sort=nearest,limit=1] run tag @s add MagicHit