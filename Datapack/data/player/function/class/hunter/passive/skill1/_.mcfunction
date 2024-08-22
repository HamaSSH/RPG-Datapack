#> player:class/hunter/passive/skill1/_
# スキルレベルごとの効果

# 左クリック矢の最大本数 I=1｜II=2｜III=3
    execute if score @s PassiveSkill1 matches 1 run scoreboard players add @s MaxArrowLC 1
    execute if score @s PassiveSkill1 matches 2 run scoreboard players add @s MaxArrowLC 2
    execute if score @s PassiveSkill1 matches 3.. run scoreboard players add @s MaxArrowLC 3

# 矢の貫通力 II=+1｜IV=+2
    execute if score @s PassiveSkill1 matches 2 run scoreboard players add @s PierceLevel 1
    execute if score @s PassiveSkill1 matches 3 run scoreboard players add @s PierceLevel 1
    execute if score @s PassiveSkill1 matches 4 run scoreboard players add @s PierceLevel 2

# 矢を複数本放つ
    execute if score @s PassiveSkill1 matches 3.. run scoreboard players add @s Multishot 1