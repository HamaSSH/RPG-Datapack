# マナバースト
    execute if score @s skill_cd matches 300 positioned ^4 ^0.6 ^-1 run function combat:main/wand/skill/bullet/1
    execute if score @s skill_cd matches 298 positioned ^2 ^1.15 ^-1 run function combat:main/wand/skill/bullet/2
    execute if score @s skill_cd matches 296 positioned ^ ^1.4 ^-1 run function combat:main/wand/skill/bullet/3
    execute if score @s skill_cd matches 294 positioned ^-2 ^1.15 ^-1 run function combat:main/wand/skill/bullet/4
    execute if score @s skill_cd matches 292 positioned ^-4 ^0.6 ^-1 run function combat:main/wand/skill/bullet/5
    execute if score @s skill_cd matches 292 run function combat:main/wand/skill/reset