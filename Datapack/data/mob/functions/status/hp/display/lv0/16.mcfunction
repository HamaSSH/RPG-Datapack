#> mob:status/hp/display/lv0/16
# HPの割合に応じたモブHPバーの設定

execute if score @s HPRatio matches 33 run data modify storage mob: Space.HPBar set value ['{"text":"█████","color":"green"}','[{"text":"███▏","color":"green"},{"text":"▊█","color":"dark_gray"}]']
execute if score @s HPRatio matches 34 run data modify storage mob: Space.HPBar set value ['{"text":"█████","color":"green"}','[{"text":"███▍","color":"green"},{"text":"▌█","color":"dark_gray"}]']