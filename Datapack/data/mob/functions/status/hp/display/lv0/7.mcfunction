##########
#>
#

execute if score @s HPRatio matches 15 run data modify storage mob: Space.HPBar set value ['[{"text":"███▋","color":"yellow"},{"text":"▎█","color":"dark_gray"}]','{"text":"█████","color":"dark_gray"}']
execute if score @s HPRatio matches 16 run data modify storage mob: Space.HPBar set value ['[{"text":"████","color":"yellow"},{"text":"█","color":"dark_gray"}]','{"text":"█████","color":"dark_gray"}']