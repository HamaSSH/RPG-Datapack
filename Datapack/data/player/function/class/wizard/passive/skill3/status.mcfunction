#> player:class/wizard/passive/skill3/status
# 属性纏い中のステータスバフ

# II=1.1倍｜III=1.15倍｜IV=1.2倍
    scoreboard players operation $StatusMultiplier Temporary = @s PassiveSkill3
    scoreboard players operation $StatusMultiplier Temporary *= #5 Constant
    scoreboard players add $StatusMultiplier Temporary 100
    scoreboard players operation @s MPR *= $StatusMultiplier Temporary
    scoreboard players operation @s INT *= $StatusMultiplier Temporary
    scoreboard players operation @s DEF *= $StatusMultiplier Temporary
    scoreboard players operation @s AGI *= $StatusMultiplier Temporary
    scoreboard players operation @s CRT *= $StatusMultiplier Temporary
    scoreboard players operation @s LUK *= $StatusMultiplier Temporary
    scoreboard players operation @s MPR /= #100 Constant
    scoreboard players operation @s INT /= #100 Constant
    scoreboard players operation @s DEF /= #100 Constant
    scoreboard players operation @s AGI /= #100 Constant
    scoreboard players operation @s CRT /= #100 Constant
    scoreboard players operation @s LUK /= #100 Constant

# リセット
    scoreboard players reset $StatusMultiplier Temporary
