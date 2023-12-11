#> player:combat/main/hammer/skill/tick
# ハンマーの地割り

execute if score @s SkillTimer matches 400 run effect give @s levitation 1 20 true
execute if score @s SkillTimer matches 390..396 if block ~ ~-0.5 ~ #lib:no_collision run effect clear @s levitation
execute if score @s SkillTimer matches ..394 unless entity @s[tag=HammerLanded] if block ~ ~-0.5 ~ #lib:no_collision run scoreboard players add @s SkillTimer 1
execute if score @s SkillTimer matches 394 unless block ~ ~-0.5 ~ #lib:no_collision run tag @s add HammerLanded
execute if score @s SkillTimer matches 394 run function player:combat/main/hammer/skill/impact/1
execute if score @s SkillTimer matches 387 run function player:combat/main/hammer/skill/impact/2
execute if score @s SkillTimer matches 380 run function player:combat/main/hammer/skill/impact/3
execute if score @s SkillTimer matches 380 run tag @s remove HammerLanded
execute if score @s SkillTimer matches 380 run tag @s remove HammerSkill