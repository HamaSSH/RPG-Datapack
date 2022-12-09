# 無属性の演出
    particle minecraft:sweep_attack ^ ^1.0 ^1.5 0.15 0.15 0.15 1 1 force
    playsound resource:custom.weapon.sword master @a ~ ~ ~ 0.4 1.0
# 属性がある場合の演出
    execute if score @s FireAttack matches 1.. run function combat:main/sword/skill/effect/fire
    execute if score @s WaterAttack matches 1.. run function combat:main/sword/skill/effect/water
    execute if score @s ThunderAttack matches 1.. run function combat:main/sword/skill/effect/thunder
    execute if score @s EarthAttack matches 1.. run function combat:main/sword/skill/effect/earth
    execute if score @s WindAttack matches 1.. run function combat:main/sword/skill/effect/wind