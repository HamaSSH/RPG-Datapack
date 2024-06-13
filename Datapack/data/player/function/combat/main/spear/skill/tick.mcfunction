#> player:combat/main/spear/skill/tick
# 槍の三連突き

execute if score @s SkillTimer matches 400 run function player:combat/main/spear/skill/_
execute if score @s SkillTimer matches 395 run function player:combat/main/spear/skill/_
execute if score @s SkillTimer matches 390 run function player:combat/main/spear/skill/_
execute if score @s SkillTimer matches 390 run tag @s remove SpearSkill