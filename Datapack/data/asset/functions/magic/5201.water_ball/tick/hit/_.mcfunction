#> asset:magic/5201.water_ball/tick/hit/_
# 魔法がヒットした時の処理

# 周りの敵にも当たる攻撃
    # scoreboard players set $XPower Temporary 80
    # scoreboard players set $YPower Temporary 80
    execute positioned ~-0.8 ~-0.8 ~-0.8 as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,dx=0.6,dy=0.6,dz=0.6,sort=nearest,limit=5] run function asset:magic/5201.water_ball/tick/hit/aoe

# 演出
    particle splash ~ ~ ~ 0.2 0.4 0.2 0.05 100 force
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    playsound item.firecharge.use master @a ~ ~ ~ 0.4 1.2
    playsound entity.firework_rocket.blast_far master @a ~ ~ ~ 0.7 0.8