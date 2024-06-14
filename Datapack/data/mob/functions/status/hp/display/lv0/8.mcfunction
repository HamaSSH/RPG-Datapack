#> mob:status/hp/display/lv0/8
# HPの割合に応じたモブHPバーの設定

execute if score @s HPRatio matches 17 run data modify storage mob: Space.HPBar set value ['[{"text":"████▏","color":"yellow"},{"text":"▊","color":"dark_gray"}]','{"text":"█████","color":"dark_gray"}']
execute if score @s HPRatio matches 18 run data modify storage mob: Space.HPBar set value ['[{"text":"████▍","color":"yellow"},{"text":"▌","color":"dark_gray"}]','{"text":"█████","color":"dark_gray"}']