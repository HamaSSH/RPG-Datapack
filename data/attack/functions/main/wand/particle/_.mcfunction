# 無属性の演出
    execute if entity @s[tag=NeutralAttack] run function attack:main/wand/particle/neutral
# 属性がある場合の演出
    execute if entity @s[tag=FireAttack] run function attack:main/wand/particle/fire
    execute if entity @s[tag=WaterAttack] run function attack:main/wand/particle/water
    execute if entity @s[tag=ThunderAttack] run function attack:main/wand/particle/thunder
    execute if entity @s[tag=EarthAttack] run function attack:main/wand/particle/earth
    execute if entity @s[tag=WindAttack] run function attack:main/wand/particle/wind