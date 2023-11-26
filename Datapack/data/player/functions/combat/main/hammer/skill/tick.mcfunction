#> player:combat/main/hammer/skill/tick
# ハンマーの地割り

execute if score @s SkillTimer matches 400 run effect give @s levitation 1 20 true
execute if score @s SkillTimer matches 390..396 if block ~ ~-1 ~ #lib:no_collision run effect clear @s levitation
execute if score @s SkillTimer matches ..394 unless block ~ ~-0.5 ~ #lib:no_collision if entity @s[tag=HammerSkill] run function player:combat/main/hammer/skill/_