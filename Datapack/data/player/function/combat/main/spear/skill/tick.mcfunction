#> player:combat/main/spear/skill/tick
# 槍の三連突き

execute if score @s SkillTimer matches 400 if predicate player:hold_weapon/spear run function player:combat/main/spear/skill/_
execute if score @s SkillTimer matches 395 if predicate player:hold_weapon/spear run function player:combat/main/spear/skill/_
execute if score @s SkillTimer matches 390 if predicate player:hold_weapon/spear run function player:combat/main/spear/skill/_
execute if score @s SkillTimer matches 390 run tag @s remove SpearSkill