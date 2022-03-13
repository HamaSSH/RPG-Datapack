# スキルレベル毎の弓矢本数
    execute if score @s skill_level matches 1..2 run function attack:main/bow/arrow/summon/single
    execute if score @s skill_level matches 3..4 run function attack:main/bow/arrow/summon/double
    execute if score @s skill_level matches 5 run function attack:main/bow/arrow/summon/triple