#> asset:magic/5101.fire_ball/tick/hit/aoe
# 範囲攻撃

# MagicHitタグが付けられたモブの周りのにもHitタグをつける
    execute positioned ~-1 ~-0.2 ~-1 as @e[type=#lib:every_mob,tag=Enemy,dx=1,dy=1,dz=1,sort=nearest,limit=5] run function mob:hitbox
    tag @s remove MagicHit

# 演出
    particle flame ~ ~ ~ 0.3 0.5 0.3 0.1 40 force
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    playsound entity.firework_rocket.blast_far master @a ~ ~ ~ 0.7 0.8
    playsound resource:custom.firecharge.use master @a ~ ~ ~ 0.4 1.2