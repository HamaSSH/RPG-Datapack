# 属性タイマーリセット
  scoreboard players set @s ElementAttack 0
  scoreboard players set @s FireAttack 0
  scoreboard players set @s WaterAttack 0
  scoreboard players set @s ThunderAttack 0
  scoreboard players set @s EarthAttack 0
  scoreboard players set @s WindAttack 0
# 属性ごとのタイマー
  scoreboard players set @s ElementAttack 100
  execute if data storage magic:temp Data.tag{magic:"fire"} run scoreboard players set @s FireAttack 100
  execute if data storage magic:temp Data.tag{magic:"water"} run scoreboard players set @s WaterAttack 100
  execute if data storage magic:temp Data.tag{magic:"thunder"} run scoreboard players set @s ThunderAttack 100
  execute if data storage magic:temp Data.tag{magic:"earth"} run scoreboard players set @s EarthAttack 100
  execute if data storage magic:temp Data.tag{magic:"wind"} run scoreboard players set @s WindAttack 100