#> player:combat/main/spear/skill/start
# ため攻撃開始

scoreboard players set @s SkillTimer 400
tag @s add SpearSkill
tag @s remove MPCheckPass
execute if predicate player:is_element/_ run advancement grant @s only asset:achievement/1.3