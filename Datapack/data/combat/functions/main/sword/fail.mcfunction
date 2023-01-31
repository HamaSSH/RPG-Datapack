##########
#>
#

# 当たり判定
    execute anchored eyes positioned ^ ^ ^-0.2 run function combat:main/sword/rec
    execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,tag=!HurtTime,distance=..4,sort=nearest,limit=1] run function combat:main/fail
    execute positioned ~-4 ~-4 ~-4 as @e[type=#mob:mobs,tag=Hit,tag=Enemy,dx=7,dy=7,dz=7] run tag @s remove Hit
# 演出(刀剣失敗)
    particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0.01 1
    playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0