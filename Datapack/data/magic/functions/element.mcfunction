##########
#>
#

# 属性タイマーリセット
    scoreboard players set @s ElementAttack 0
    scoreboard players set @s FireAttack 0
    scoreboard players set @s WaterAttack 0
    scoreboard players set @s ThunderAttack 0
    scoreboard players set @s EarthAttack 0
    scoreboard players set @s WindAttack 0
# 属性ごとのタイマー
    scoreboard players set @s ElementAttack 100
    execute if data storage magic: Data{Element:"Fire"} run scoreboard players set @s FireAttack 100
    execute if data storage magic: Data{Element:"Water"} run scoreboard players set @s WaterAttack 100
    execute if data storage magic: Data{Element:"Thunder"} run scoreboard players set @s ThunderAttack 100
    execute if data storage magic: Data{Element:"Earth"} run scoreboard players set @s EarthAttack 100
    execute if data storage magic: Data{Element:"Wind"} run scoreboard players set @s WindAttack 100