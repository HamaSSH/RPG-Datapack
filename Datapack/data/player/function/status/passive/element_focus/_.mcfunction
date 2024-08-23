#> player:status/passive/element_focus/_
# 属性纏いの効果時間の延長

scoreboard players operation $ElementFocus Temporary = @s ElementFocus
scoreboard players add $ElementFocus Temporary 100
scoreboard players operation $ElementDuration Temporary *= $ElementFocus Temporary
scoreboard players operation $ElementDuration Temporary /= #100 Constant