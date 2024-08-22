#> player:class/hunter/passive/skill4/_
# スキルレベルごとの効果

# 素早さ
    execute if score @s PassiveSkill4 matches 1.. run scoreboard players add @s AGI 150
    execute if score @s PassiveSkill4 matches 4 run scoreboard players add @s AGI 50

# 物理攻撃力
    execute if score @s PassiveSkill4 matches 2.. run scoreboard players add @s STR 30
    execute if score @s PassiveSkill4 matches 4 run scoreboard players add @s STR 10

# 会心
    execute if score @s PassiveSkill4 matches 3.. run scoreboard players add @s CRT 90
    execute if score @s PassiveSkill4 matches 4 run scoreboard players add @s CRT 30