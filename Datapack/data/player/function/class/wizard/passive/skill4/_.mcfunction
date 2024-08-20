#> player:class/wizard/passive/skill4/_
# スキルレベルごとの効果

# 魔導書リセット確率 I=20%｜II=28%｜III=36%｜IV=44%
    scoreboard players operation $GrimReset Temporary = @s PassiveSkill4
    scoreboard players operation $GrimReset Temporary *= #8 Constant
    scoreboard players add $GrimReset Temporary 12
    scoreboard players operation @s GrimReset += $GrimReset Temporary

# リセット
    scoreboard players reset $GrimReset Temporary