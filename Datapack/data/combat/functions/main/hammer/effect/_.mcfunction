##########
#>
#

# 無属性の演出
    particle minecraft:explosion ^ ^0.7 ^1.2 0 0 0 0.1 1 force
    playsound resource:custom.weapon.hammer master @a ~ ~ ~ 1.0 1.0
# 属性がある場合の演出
    execute if score @s FireAttack matches 1.. run function combat:main/hammer/effect/fire
    execute if score @s WaterAttack matches 1.. run function combat:main/hammer/effect/water
    execute if score @s ThunderAttack matches 1.. run function combat:main/hammer/effect/thunder
    execute if score @s EarthAttack matches 1.. run function combat:main/hammer/effect/earth
    execute if score @s WindAttack matches 1.. run function combat:main/hammer/effect/wind