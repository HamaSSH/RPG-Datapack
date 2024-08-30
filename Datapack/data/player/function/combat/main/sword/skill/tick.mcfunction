#> player:combat/main/sword/skill/tick
# 刀剣の回転切り

execute if score @s SkillTimer matches 393..400 if predicate player:hold_weapon/sword run function player:combat/main/sword/skill/_
execute if score @s SkillTimer matches 393 run tag @s remove SwordSkill