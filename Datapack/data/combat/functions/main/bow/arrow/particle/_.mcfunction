##########
#>
#

# 無属性の演出
    execute if entity @s[tag=LCArrow] run particle crit ~ ~ ~ 0.1 0.1 0.1 0 2 force
# 属性がある場合の演出
    execute if entity @s[tag=FireAttack] run function combat:main/bow/arrow/particle/fire
    execute if entity @s[tag=WaterAttack] run function combat:main/bow/arrow/particle/water
    execute if entity @s[tag=ThunderAttack] run function combat:main/bow/arrow/particle/thunder
    execute if entity @s[tag=EarthAttack] run function combat:main/bow/arrow/particle/earth
    execute if entity @s[tag=WindAttack] run function combat:main/bow/arrow/particle/wind