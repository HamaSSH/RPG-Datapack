#> asset:magic/5501.wind_ball/tick/hit/aoe
# 範囲攻撃

# MagicHitタグが付けられたモブの周りのにもHitタグをつける
    execute positioned ~-0.8 ~-0.8 ~-0.8 as @e[type=#lib:every_mob,tag=Enemy,dx=0.6,dy=0.6,dz=0.6,sort=nearest,limit=5] run function mob:hitbox
    tag @s remove MagicHit

# 演出
    particle cloud ~ ~ ~ 0.3 0.5 0.3 0.1 50 force
    particle gust ~ ~0.3 ~ 0.7 0.4 0.7 0 3 force
    particle sweep_attack ~ ~0.4 ~ 0.3 0.5 0.3 0.2 8 force
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    playsound resource:custom.firecharge.use master @a ~ ~ ~ 0.4 1.2
    playsound entity.firework_rocket.blast_far master @a ~ ~ ~ 0.7 0.8