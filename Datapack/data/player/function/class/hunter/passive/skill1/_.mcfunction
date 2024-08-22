#> player:class/hunter/passive/skill1/_
# スキルレベルごとの効果

execute if score @s PassiveSkill1 matches 1 run scoreboard players set @s MaxArrowLC 1
execute if score @s PassiveSkill1 matches 2 run scoreboard players set @s MaxArrowLC 2
execute if score @s PassiveSkill1 matches 3.. run scoreboard players set @s MaxArrowLC 3