##########
#>
#

# 無属性の演出
    particle explosion ~ ~0.5 ~ 1.0 0.7 1.0 0 10 force
    playsound resource:custom.hammer player @a ~ ~ ~ 0.4 1.0
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 0.7 0.7
# 属性がある場合の演出
    execute if score @s FireAttack matches 1.. run function combat:main/hammer/skill/effect/fire
    execute if score @s WaterAttack matches 1.. run function combat:main/hammer/skill/effect/water
    execute if score @s ThunderAttack matches 1.. run function combat:main/hammer/skill/effect/thunder
    execute if score @s EarthAttack matches 1.. run function combat:main/hammer/skill/effect/earth
    execute if score @s WindAttack matches 1.. run function combat:main/hammer/skill/effect/wind