#> mob:status/hp/display/lv0/19
# HPの割合に応じたモブHPバーの設定

execute if score @s HPRatio matches 39 run data modify storage mob: Space.HPBar set value ['{"text":"█████","color":"green"}','[{"text":"████▋","color":"green"},{"text":"▎","color":"dark_gray"}]']
execute if score @s HPRatio matches 40.. run data modify storage mob: Space.HPBar set value ['{"text":"█████","color":"green"}','{"text":"█████","color":"green"}']