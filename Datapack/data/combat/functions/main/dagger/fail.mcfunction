##########
#>
#

# 当たり判定
    execute anchored eyes positioned ^ ^ ^-0.1 run function combat:main/dagger/rec
    execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,tag=!HurtTime,distance=..3.5,sort=nearest,limit=2] run function combat:main/fail
    execute positioned ~-3.5 ~-3.5 ~-3.5 as @e[type=#mob:mobs,tag=Hit,tag=Enemy,dx=6,dy=6,dz=6] run tag @s remove Hit
# 演出(短剣失敗)
    particle enchanted_hit ^ ^1.4 ^2 0.5 0.1 0.5 0.5 2
    playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0