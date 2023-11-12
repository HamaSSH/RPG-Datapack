#> player:ui/_
# プレイヤーUI

function player:ui/skill_bar/_

# 右揃え・左揃え用のスコア用
    data modify storage player:ui alignR set value '["\\uF820",{"score":{"name":"@s","objective":"HP"}},{"score":{"name":"@s","objective":"HPMax"}}]'
    data modify storage player:ui alignL set value '["",{"score":{"name":"@s","objective":"LVL"},"bold":true},{"score":{"name":"@s","objective":"EXP"}},{"score":{"name":"@s","objective":"NextEXP"}},"\\uF820"]'

# UIの適用
title @s actionbar [{"nbt":"alignL","storage":"player:ui","interpret":true},"\uF80B\uF809\uF803","\uE140\uF822",[{"text":"","font":"shift_16"},{"score":{"name":"@s","objective":"HP"}},"/",{"score":{"name":"@s","objective":"HPMax"},"color":"gray"}],"\uF82C\uF82A\uF828\uF823",{"nbt":"skill_bar","storage":"player:ui","interpret":true},"\uF80B\uF809\uF801",[{"text":"","color":"gray","font":"shift_13"},{"text":"Lv. "},{"score":{"name":"@s","objective":"LVL"},"color":"white","bold":true},"  (",{"score":{"name":"@s","objective":"EXP"},"color":"#9EE082"},"/",{"score":{"name":"@s","objective":"NextEXP"}},")"],{"nbt":"alignR","storage":"player:ui","interpret":true}]