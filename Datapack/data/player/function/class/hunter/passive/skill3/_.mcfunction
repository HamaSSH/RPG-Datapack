#> player:class/hunter/passive/skill3/_
# スキルレベルごとの効果

# 攻撃速度上昇最大で I=0.4｜III=0.5｜IV=0.6
    execute if score @s PassiveSkill3 matches 1 run scoreboard players set $AttackSpeed Temporary 400
    execute if score @s PassiveSkill3 matches 3 run scoreboard players set $AttackSpeed Temporary 500
    execute if score @s PassiveSkill3 matches 4 run scoreboard players set $AttackSpeed Temporary 600
    scoreboard players operation $AttackSpeed Temporary *= @s AGI
    scoreboard players operation $AttackSpeed Temporary /= #1000 Constant
    scoreboard players operation @s AttackSpeed += $AttackSpeed Temporary

# 素早さに応じて会心値補正 I=0.1倍｜II=0.15倍｜III=0.2倍｜IV=0.25倍
    scoreboard players operation $ClassCRT Temporary = @s AGI
    execute if score @s PassiveSkill3 matches 1 run scoreboard players operation $ClassCRT Temporary *= #2 Constant
    execute if score @s PassiveSkill3 matches 2 run scoreboard players operation $ClassCRT Temporary *= #3 Constant
    execute if score @s PassiveSkill3 matches 3 run scoreboard players operation $ClassCRT Temporary *= #4 Constant
    execute if score @s PassiveSkill3 matches 4 run scoreboard players operation $ClassCRT Temporary *= #5 Constant
    scoreboard players operation $ClassCRT Temporary /= #20 Constant
    scoreboard players operation @s CRT += $ClassCRT Temporary

# リセット
    scoreboard players reset $AttackSpeed Temporary
    scoreboard players reset $ClassCRT Temporary