##########
#>
#

# 無属性の演出
    particle minecraft:sweep_attack ^ ^0.5 ^2 0.7 0.2 0.7 0 10 force
    particle minecraft:sweep_attack ^ ^0.5 ^3.5 0.7 0.2 0.7 0 10 force
    particle minecraft:sweep_attack ^ ^0.5 ^5 0.7 0.2 0.7 0 10 force
    playsound minecraft:item.trident.thunder master @a ~ ~ ~ 0.1 2.0
    playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 1.0 1.1
# 属性がある場合の演出
    execute if score @s FireAttack matches 1.. run function combat:main/spear/skill/effect/fire
    execute if score @s WaterAttack matches 1.. run function combat:main/spear/skill/effect/water
    execute if score @s ThunderAttack matches 1.. run function combat:main/spear/skill/effect/thunder
    execute if score @s EarthAttack matches 1.. run function combat:main/spear/skill/effect/earth
    execute if score @s WindAttack matches 1.. run function combat:main/spear/skill/effect/wind