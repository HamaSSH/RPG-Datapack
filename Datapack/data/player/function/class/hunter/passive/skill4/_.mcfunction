#> player:class/hunter/passive/skill4/_
# スキルレベルごとの効果

# 素早さ
    execute if score @s PassiveSkill4 matches 1.. run scoreboard players add $ClassAGI Temporary 100
    execute if score @s PassiveSkill4 matches 4 run scoreboard players add $ClassAGI Temporary 50
    execute if score @s PassiveSkill4 matches 1.. run scoreboard players operation $ClassAGI Temporary *= #105 Constant
    execute if score @s PassiveSkill4 matches 1.. run scoreboard players operation $ClassAGI Temporary /= #100 Constant
    scoreboard players operation @s AGI += $ClassAGI Temporary

# 物理攻撃力
    execute if score @s PassiveSkill4 matches 2.. run scoreboard players add $ClassSTR Temporary 30
    execute if score @s PassiveSkill4 matches 4 run scoreboard players add $ClassSTR Temporary 10
    execute if score @s PassiveSkill4 matches 2.. run scoreboard players operation $ClassSTR Temporary *= #105 Constant
    execute if score @s PassiveSkill4 matches 2.. run scoreboard players operation $ClassSTR Temporary /= #100 Constant
    scoreboard players operation @s STR += $ClassSTR Temporary

# 会心
    execute if score @s PassiveSkill4 matches 3.. run scoreboard players add $ClassCRT Temporary 90
    execute if score @s PassiveSkill4 matches 4 run scoreboard players add $ClassCRT Temporary 30
    execute if score @s PassiveSkill4 matches 3.. run scoreboard players operation $ClassCRT Temporary *= #105 Constant
    execute if score @s PassiveSkill4 matches 3.. run scoreboard players operation $ClassCRT Temporary /= #100 Constant
    scoreboard players operation @s CRT += $ClassCRT Temporary

# リセット
    scoreboard players reset $ClassAGI Temporary
    scoreboard players reset $ClassSTR Temporary
    scoreboard players reset $ClassCRT Temporary