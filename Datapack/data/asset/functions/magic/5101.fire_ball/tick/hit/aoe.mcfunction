#> asset:magic/5101.fire_ball/tick/hit/aoe
# 範囲攻撃

# MagicHitタグが付けられた周りの敵にも当たる攻撃
    tag @s remove MagicHit
    execute positioned ~-0.8 ~-0.8 ~-0.8 as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,dx=0.6,dy=0.6,dz=0.6,sort=nearest,limit=5] run tag @s add Hit

# 演出
    particle flame ~ ~ ~ 0.1 0.6 0.1 0.05 15 force
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    playsound entity.firework_rocket.blast_far master @a ~ ~ ~ 0.7 0.8
    playsound item.firecharge.use master @a ~ ~ ~ 0.4 1.2