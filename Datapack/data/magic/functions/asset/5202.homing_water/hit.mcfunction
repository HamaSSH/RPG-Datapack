##########
#>
#

# Hit処理
    scoreboard players set $XPower Temporary 80
    scoreboard players set $YPower Temporary 80
    execute at @s positioned ~-0.8 ~-0.8 ~-0.8 as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,dx=0.6,dy=0.6,dz=0.6,sort=nearest,limit=5] run function magic:asset/5201.water_ball/aoe
# 当たり判定可視化
    # execute at @s run particle wax_on ~-0.8 ~-0.8 ~-0.8 0 0 0 0 10 force
    # execute at @s run particle wax_off ~0.8 ~0.8 ~0.8 0 0 0 0 10 force
# 演出
    particle splash ~ ~ ~ 0.2 0.4 0.2 0.05 100 force
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    playsound item.firecharge.use master @a ~ ~ ~ 0.4 1.2
    playsound entity.firework_rocket.blast_far master @a ~ ~ ~ 0.7 0.8