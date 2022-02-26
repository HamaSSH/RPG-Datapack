# 地割り
  # execute if score @s skill_cd matches 300 run 防御バフ...
  execute if score @s skill_cd matches 300 run effect give @s minecraft:levitation 1 20 true
  execute if score @s skill_cd matches 290..296 if block ~ ~-1 ~ #attack:pass run effect clear @s minecraft:levitation
  execute if score @s skill_cd matches 290 if score @s ThunderAttack matches 1.. run effect give @s minecraft:levitation 1 200 true
  execute if score @s skill_cd matches 284..300 run tp @s ~ ~ ~ ~ ~15
  execute if score @s skill_cd matches ..294 unless block ~ ~-0.5 ~ air if entity @s[tag=HammerTick] run function attack:main/hammer/skill/_