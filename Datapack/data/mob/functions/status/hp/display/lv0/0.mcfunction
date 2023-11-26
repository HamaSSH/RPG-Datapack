#> mob:status/hp/display/lv0/0
# HPの割合に応じたモブHPバーの設定

execute if score @s HPRatio matches ..0 run data modify storage mob: Space.HPBar set value ['{"text":"█████","color":"dark_gray"}','{"text":"█████","color":"dark_gray"}']
execute if score @s HPRatio matches 1 run data modify storage mob: Space.HPBar set value ['[{"text":"▏","color":"dark_red"},{"text":"▊████","color":"dark_gray"}]','{"text":"█████","color":"dark_gray"}']
execute if score @s HPRatio matches 2 run data modify storage mob: Space.HPBar set value ['[{"text":"▍","color":"dark_red"},{"text":"▌████","color":"dark_gray"}]','{"text":"█████","color":"dark_gray"}']