#> mob:status/hp/display/lv0/14
# HPの割合に応じたモブHPバーの設定

execute if score @s HPRatio matches 29 run data modify storage mob: Space.HPBar set value ['{"text":"█████","color":"green"}','[{"text":"██▏","color":"green"},{"text":"▊██","color":"dark_gray"}]']
execute if score @s HPRatio matches 30 run data modify storage mob: Space.HPBar set value ['{"text":"█████","color":"green"}','[{"text":"██▍","color":"green"},{"text":"▌██","color":"dark_gray"}]']