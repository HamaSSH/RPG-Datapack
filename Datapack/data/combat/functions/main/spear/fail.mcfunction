##########
#>
#

# 当たり判定
    execute anchored eyes positioned ^ ^ ^-0.1 run function combat:main/spear/rec
    execute positioned ~-4.5 ~-4.5 ~-4.5 as @e[type=#lib:every_mob,tag=Hit,tag=Enemy,dx=8,dy=8,dz=8] run function combat:main/fail
# 演出(槍失敗)
    particle crit ^ ^1.7 ^ 0.25 0.1 0.25 0.2 1
    particle crit ^ ^1.7 ^2 0.25 0.1 0.25 0.2 1
    particle crit ^ ^1.7 ^4 0.25 0.1 0.25 0.2 1
    playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0