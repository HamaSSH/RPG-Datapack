#> player:class/hunter/passive/skill2/_
# スキルレベルごとの効果

# HP吸収 I=0.015%｜II=0.017%｜III=0.019%｜IV=0.021%
    scoreboard players operation $HPDrain Temporary = @s PassiveSkill2
    scoreboard players operation $HPDrain Temporary *= #2 Constant
    scoreboard players add $HPDrain Temporary 13
    scoreboard players operation @s HPDrain += $HPDrain Temporary

# リセット
    scoreboard players reset $HPDrain Temporary