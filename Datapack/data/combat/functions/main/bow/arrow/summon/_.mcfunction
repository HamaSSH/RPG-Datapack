##########
#>
#

# スキルレベル毎の弓矢本数
    execute if score @s SkillLevel matches 1..2 run function combat:main/bow/arrow/summon/single
    execute if score @s SkillLevel matches 3..4 run function combat:main/bow/arrow/summon/double
    execute if score @s SkillLevel matches 5 run function combat:main/bow/arrow/summon/triple