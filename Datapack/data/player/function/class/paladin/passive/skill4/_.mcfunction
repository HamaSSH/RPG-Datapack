#> player:class/paladin/passive/skill4/_
# スキルレベルごとの効果

# 単純なステータス補正
    scoreboard players add @s HPR 20
    scoreboard players add @s MPR 20
    scoreboard players add @s DEF 12
    scoreboard players add @s AGI 15
    scoreboard players add @s CRT 20
    scoreboard players add @s LUK 16

# I=1.1倍｜II=1.15倍｜III=1.2倍｜IV=1.25倍
    scoreboard players operation $StatusMultiplier Temporary = @s PassiveSkill4
    scoreboard players operation $StatusMultiplier Temporary *= #5 Constant
    scoreboard players add $StatusMultiplier Temporary 105
    scoreboard players operation @s HPR *= $StatusMultiplier Temporary
    scoreboard players operation @s MPR *= $StatusMultiplier Temporary
    scoreboard players operation @s STR *= $StatusMultiplier Temporary
    scoreboard players operation @s INT *= $StatusMultiplier Temporary
    scoreboard players operation @s DEF *= $StatusMultiplier Temporary
    scoreboard players operation @s AGI *= $StatusMultiplier Temporary
    scoreboard players operation @s CRT *= $StatusMultiplier Temporary
    scoreboard players operation @s LUK *= $StatusMultiplier Temporary
    scoreboard players operation @s HPR /= #100 Constant
    scoreboard players operation @s MPR /= #100 Constant
    scoreboard players operation @s STR /= #100 Constant
    scoreboard players operation @s INT /= #100 Constant
    scoreboard players operation @s DEF /= #100 Constant
    scoreboard players operation @s AGI /= #100 Constant
    scoreboard players operation @s CRT /= #100 Constant
    scoreboard players operation @s LUK /= #100 Constant

# リセット
    scoreboard players reset $StatusMultiplier Temporary