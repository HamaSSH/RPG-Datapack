#> player:class/wizard/passive/skill3/_
# スキルレベルごとの効果

# 属性纏い時間 I=1.5倍｜II=1.8倍｜III=2.1倍｜IV=2.4倍
    scoreboard players operation $ElementFocus Temporary = @s PassiveSkill3
    scoreboard players operation $ElementFocus Temporary *= #30 Constant
    scoreboard players add $ElementFocus Temporary 120
    scoreboard players operation @s ElementFocus += $ElementFocus Temporary

# 属性纏い中のステータスバフ I=1.05倍｜II=1.1倍｜III=1.15倍｜IV=1.2倍
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

# 属性纏いが重複するタグ
    tag @s add MultipleElement

# リセット
    scoreboard players reset $ElementFocus Temporary
    scoreboard players reset $StatusMultiplier Temporary