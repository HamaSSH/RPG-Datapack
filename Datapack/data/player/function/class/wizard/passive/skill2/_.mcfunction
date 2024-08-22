#> player:class/wizard/passive/skill2/_
# スキルレベルごとの効果

# MP吸収 I=0.013%｜II=0.016%｜III=0.019%｜IV=0.022%
    scoreboard players operation $MPDrain Temporary = @s PassiveSkill2
    scoreboard players operation $MPDrain Temporary *= #3 Constant
    scoreboard players add $MPDrain Temporary 10
    scoreboard players operation @s MPDrain += $MPDrain Temporary

# リセット
    scoreboard players reset $MPDrain Temporary