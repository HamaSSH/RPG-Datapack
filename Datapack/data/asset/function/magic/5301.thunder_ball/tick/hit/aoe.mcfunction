#> asset:magic/5301.thunder_ball/tick/hit/aoe
# 範囲攻撃

# MagicHitタグが付けられたモブの周りのにもHitタグをつける
    execute positioned ~-1.6 ~-1.6 ~-1.6 as @e[type=#lib:every_mob,tag=Enemy,dx=2.2,dy=2.2,dz=2.2,sort=random,limit=5] run function mob:hitbox
    tag @s remove MagicHit

# 演出
    # 雷
        execute at @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..4] run particle dust_color_transition{from_color:[0.992,1.0,0.62],to_color:[1.0,0.941,0.133],scale:1.5} ~ ~2 ~ 0.2 2.5 0.2 0.1 40 force
    particle end_rod ~ ~ ~ 0.3 0.5 0.3 0.2 40 force
    particle dust_color_transition{from_color:[0.992,1.0,0.62],to_color:[1.0,0.941,0.133],scale:2} ~ ~ ~ 0.4 0.4 0.4 0.2 60 force
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    playsound resource:custom.firecharge.use master @a ~ ~ ~ 0.4 1.2
    playsound entity.firework_rocket.blast_far master @a ~ ~ ~ 0.7 0.8