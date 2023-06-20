##########
#>
#

# 当たり判定
    summon area_effect_cloud ~ ~ ~ {Tags:["Wand","WandInit"],Duration:20}
    execute as @e[type=area_effect_cloud,tag=WandInit,distance=..0.01] run function combat:main/wand/init
# 演出(杖通常初期)
    execute unless score @s ElementAttack matches 1.. run particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 0.1 10 force
    playsound resource:custom.weapon.wand master @a ~ ~ ~ 1.0 1.0
    execute if score @s FireAttack matches 1.. run function combat:main/wand/effect/fire
    execute if score @s WaterAttack matches 1.. run function combat:main/wand/effect/water
    execute if score @s ThunderAttack matches 1.. run function combat:main/wand/effect/thunder
    execute if score @s EarthAttack matches 1.. run function combat:main/wand/effect/earth
    execute if score @s WindAttack matches 1.. run function combat:main/wand/effect/wind