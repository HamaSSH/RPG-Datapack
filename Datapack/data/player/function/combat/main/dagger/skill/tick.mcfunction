#> player:combat/main/dagger/skill/tick
# 短剣の神速切り

execute if score @s SkillTimer matches 340..400 run function player:combat/main/dagger/skill/_
# execute if score @s SkillTimer matches 340 run attribute @s generic.attack_speed modifier remove dagger_skill #TODO: 1.21のattribute
execute if score @s SkillTimer matches 340 run attribute @s generic.attack_speed modifier remove 83a-51-1-1-0
execute if score @s SkillTimer matches 340 run tag @s remove DaggerSkill