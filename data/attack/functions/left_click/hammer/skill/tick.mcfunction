# 地割り
  execute if score @s skill_cd matches 300 run effect give @s minecraft:levitation 1 20 true
  execute if score @s skill_cd matches 296 if block ~ ~-1 ~ air run effect clear @s minecraft:levitation
  execute if score @s skill_cd matches 284..300 run tp @s ~ ~ ~ ~ ~15
  execute if score @s skill_cd matches ..294 unless block ~ ~-0.5 ~ air if entity @s[tag=HammerTick] run function attack:left_click/hammer/skill/_