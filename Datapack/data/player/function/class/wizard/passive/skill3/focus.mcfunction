#> player:class/wizard/passive/skill3/focus
# 属性纏い時間延長

# I=1.5倍｜II=1.8倍｜III=2.1倍｜IV=2.4倍
    scoreboard players operation $ElementFocus Temporary = @s PassiveSkill3
    scoreboard players operation $ElementFocus Temporary *= #30 Constant
    scoreboard players add $ElementFocus Temporary 20
    scoreboard players operation @s ElementFocus += $ElementFocus Temporary

# リセット
    scoreboard players reset $ElementFocus Temporary