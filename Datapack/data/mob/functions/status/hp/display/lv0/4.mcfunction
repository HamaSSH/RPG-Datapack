##########
#>
#

execute if score @s HPRatio matches 9 run data modify storage mob: Space.HPBar set value ['[{"text":"██▏","color":"yellow"},{"text":"▊██","color":"dark_gray"}]','{"text":"█████","color":"dark_gray"}']
execute if score @s HPRatio matches 10 run data modify storage mob: Space.HPBar set value ['[{"text":"██▍","color":"yellow"},{"text":"▌██","color":"dark_gray"}]','{"text":"█████","color":"dark_gray"}']