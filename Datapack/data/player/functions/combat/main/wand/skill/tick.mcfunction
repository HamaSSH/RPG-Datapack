#> player:combat/main/wand/skill/tick
# 杖のエレメンタルバースト(名前がダメ)

execute if score @s SkillTimer matches 400 positioned ^4 ^0.6 ^-1 run function player:combat/main/wand/skill/bullet/1
execute if score @s SkillTimer matches 398 positioned ^2 ^1.15 ^-1 run function player:combat/main/wand/skill/bullet/2
execute if score @s SkillTimer matches 396 positioned ^ ^1.4 ^-1 run function player:combat/main/wand/skill/bullet/3
execute if score @s SkillTimer matches 394 positioned ^-2 ^1.15 ^-1 run function player:combat/main/wand/skill/bullet/4
execute if score @s SkillTimer matches 392 positioned ^-4 ^0.6 ^-1 run function player:combat/main/wand/skill/bullet/5