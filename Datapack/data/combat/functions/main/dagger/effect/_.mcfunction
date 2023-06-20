##########
#>
#

# 無属性の演出
    particle minecraft:enchanted_hit ^ ^1.4 ^2 0.5 0.2 0.5 0.5 15 force
    playsound resource:custom.weapon.dagger master @a ~ ~ ~ 1.0 1.0
# 属性がある場合の演出
    execute if score @s FireAttack matches 1.. run function combat:main/dagger/effect/fire
    execute if score @s WaterAttack matches 1.. run function combat:main/dagger/effect/water
    execute if score @s ThunderAttack matches 1.. run function combat:main/dagger/effect/thunder
    execute if score @s EarthAttack matches 1.. run function combat:main/dagger/effect/earth
    execute if score @s WindAttack matches 1.. run function combat:main/dagger/effect/wind