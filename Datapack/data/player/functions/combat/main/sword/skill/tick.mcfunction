#> player:combat/main/sword/skill/tick
# 刀剣の回転切り

execute if score @s SkillTimer matches 393..400 run function player:combat/main/sword/skill/_
execute if score @s SkillTimer matches 393 run tag @s remove SwordSkill