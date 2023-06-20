##########
#>
#

# 無属性の演出
    particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0.01 1 force
    playsound resource:custom.weapon.sword master @a ~ ~ ~ 1.0 1.0
# 属性がある場合の演出
    execute if score @s FireAttack matches 1.. run function combat:main/sword/effect/fire
    execute if score @s WaterAttack matches 1.. run function combat:main/sword/effect/water
    execute if score @s ThunderAttack matches 1.. run function combat:main/sword/effect/thunder
    execute if score @s EarthAttack matches 1.. run function combat:main/sword/effect/earth
    execute if score @s WindAttack matches 1.. run function combat:main/sword/effect/wind