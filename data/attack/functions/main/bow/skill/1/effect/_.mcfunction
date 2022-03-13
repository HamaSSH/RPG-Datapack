# 無属性の演出
    particle explosion ~ ~ ~ 0.5 0.5 0.5 1 2 force
    execute if entity @s[tag=NeutralAttack] run particle crit ~ ~ ~ 0.1 0.1 0.1 0 10 force
# 属性がある場合の演出
    execute if entity @s[tag=FireAttack] run function attack:main/bow/skill/1/effect/fire
    execute if entity @s[tag=WaterAttack] run function attack:main/bow/skill/1/effect/water
    execute if entity @s[tag=ThunderAttack] run function attack:main/bow/skill/1/effect/thunder
    execute if entity @s[tag=EarthAttack] run function attack:main/bow/skill/1/effect/earth
    execute if entity @s[tag=WindAttack] run function attack:main/bow/skill/1/effect/wind