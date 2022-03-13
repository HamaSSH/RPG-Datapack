# Hit処理
    scoreboard players set $XPower Temporary 80
    scoreboard players set $YPower Temporary 80
    execute at @s positioned ~-0.8 ~-0.8 ~-0.8 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,dx=0.6,dy=0.6,dz=0.6,sort=nearest,limit=5] run function magic:asset/4101.fire_ball/aoe
# 演出
    particle minecraft:flame ~ ~ ~ 0.1 0.6 0.1 0.05 15 force
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
    playsound minecraft:item.firecharge.use master @a ~ ~ ~ 0.4 1.2
    playsound minecraft:entity.firework_rocket.blast_far master @a ~ ~ ~ 0.7 0.8