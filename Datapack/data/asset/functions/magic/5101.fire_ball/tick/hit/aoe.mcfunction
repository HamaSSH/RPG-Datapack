#> asset:magic/5101.fire_ball/tick/hit/aoe
# 範囲攻撃

# MagicHitタグが付けられたモブの周りのにもHitタグをつける
    execute positioned ~-0.8 ~-0.8 ~-0.8 as @e[type=#lib:every_mob,tag=Enemy,dx=0.6,dy=0.6,dz=0.6,sort=nearest,limit=5] run tag @s add Hit
    tag @s remove MagicHit

# 演出
    particle flame ~ ~ ~ 0.1 0.6 0.1 0.05 15 force
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    playsound entity.firework_rocket.blast_far master @a ~ ~ ~ 0.7 0.8
    playsound resource:custom.firecharge.use master @a ~ ~ ~ 0.4 1.2