#> player:combat/main/sword/skill/start
# ため攻撃開始

scoreboard players set @s SkillTimer 400
tag @s add SwordSkill
tag @s remove MPCheckPass
execute if predicate player:is_element run advancement grant @s only asset:achievement/1.3