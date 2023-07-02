##########
#>
#

# 無属性の演出
    particle crit ^ ^1.7 ^ 0.25 0.1 0.25 0.2 2 force
    particle crit ^ ^1.7 ^2 0.25 0.1 0.25 0.2 3 force
    particle crit ^ ^1.7 ^4 0.25 0.1 0.25 0.2 3 force
    playsound resource:custom.weapon.spear master @a ~ ~ ~ 1.0 1.0
# 属性がある場合の演出
    execute if score @s FireAttack matches 1.. run function combat:main/spear/effect/fire
    execute if score @s WaterAttack matches 1.. run function combat:main/spear/effect/water
    execute if score @s ThunderAttack matches 1.. run function combat:main/spear/effect/thunder
    execute if score @s EarthAttack matches 1.. run function combat:main/spear/effect/earth
    execute if score @s WindAttack matches 1.. run function combat:main/spear/effect/wind