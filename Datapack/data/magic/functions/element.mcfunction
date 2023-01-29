# 属性タイマーリセット
    scoreboard players set @s ElementAttack 0
    scoreboard players set @s FireAttack 0
    scoreboard players set @s WaterAttack 0
    scoreboard players set @s ThunderAttack 0
    scoreboard players set @s EarthAttack 0
    scoreboard players set @s WindAttack 0
# 属性ごとのタイマー
    scoreboard players set @s ElementAttack 100
    execute if data storage magic:temp Data.tag.magic{element:"fire"} run scoreboard players set @s FireAttack 100
    execute if data storage magic:temp Data.tag.magic{element:"water"} run scoreboard players set @s WaterAttack 100
    execute if data storage magic:temp Data.tag.magic{element:"thunder"} run scoreboard players set @s ThunderAttack 100
    execute if data storage magic:temp Data.tag.magic{element:"earth"} run scoreboard players set @s EarthAttack 100
    execute if data storage magic:temp Data.tag.magic{element:"wind"} run scoreboard players set @s WindAttack 100