# 当たり判定
    execute anchored eyes positioned ^ ^ ^ run function combat:main/hammer/rec
    execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,tag=!HurtTime,distance=..4,sort=nearest,limit=1] run function combat:main/fail
    execute positioned ~-4 ~-4 ~-4 as @e[type=#mob:mobs,tag=Hit,tag=Enemy,dx=7,dy=7,dz=7] run tag @s remove Hit
# 演出(ハンマー失敗)
    playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0
# リセット
    scoreboard players reset $XPower
    scoreboard players reset $YPower