#> player:class/hunter/passive/skill4/init
# 会心成功時の初期処理

scoreboard players set @s HunterCrtTimer 20
execute if score @s PassiveSkill4 matches 1.. run scoreboard players add @s HunterCrtTimer 10
execute if score @s PassiveSkill4 matches 4 run scoreboard players add @s HunterCrtTimer 10
tag @s add StatusUpdate