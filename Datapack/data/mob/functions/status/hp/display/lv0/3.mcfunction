#> mob:status/hp/display/lv0/3
# HPの割合に応じたモブHPバーの設定

execute if score @s HPRatio matches 7 run data modify storage mob: Space.HPBar set value ['[{"text":"█▋","color":"red"},{"text":"▎███","color":"dark_gray"}]','{"text":"█████","color":"dark_gray"}']
execute if score @s HPRatio matches 8 run data modify storage mob: Space.HPBar set value ['[{"text":"██","color":"red"},{"text":"███","color":"dark_gray"}]','{"text":"█████","color":"dark_gray"}']