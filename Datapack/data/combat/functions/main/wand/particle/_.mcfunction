# 無属性の演出
    execute if entity @s[tag=NeutralAttack] run function combat:main/wand/particle/neutral
# 属性がある場合の演出
    execute if entity @s[tag=FireAttack] run function combat:main/wand/particle/fire
    execute if entity @s[tag=WaterAttack] run function combat:main/wand/particle/water
    execute if entity @s[tag=ThunderAttack] run function combat:main/wand/particle/thunder
    execute if entity @s[tag=EarthAttack] run function combat:main/wand/particle/earth
    execute if entity @s[tag=WindAttack] run function combat:main/wand/particle/wind