#> player:class/wizard/passive/skill1/_
# スキルレベルごとの効果

# クールダウン低減 I=0.8倍｜II=0.65倍｜III=0.50倍｜IV=0.4倍
    execute if score @s PassiveSkill1 matches 1 run scoreboard players set $CooldownReduction Temporary 200
    execute if score @s PassiveSkill1 matches 2 run scoreboard players set $CooldownReduction Temporary 350
    execute if score @s PassiveSkill1 matches 3 run scoreboard players set $CooldownReduction Temporary 500
    execute if score @s PassiveSkill1 matches 4 run scoreboard players set $CooldownReduction Temporary 600
    scoreboard players operation @s CDR += $CooldownReduction Temporary

# リセット
    scoreboard players reset $CooldownReduction Temporary