##########
#>
#

execute if score @s HPRatio matches 3 run data modify storage mob: Space.HPBar set value ['[{"text":"▋","color":"red"},{"text":"▎████","color":"dark_gray"}]','{"text":"█████","color":"dark_gray"}']
execute if score @s HPRatio matches 4 run data modify storage mob: Space.HPBar set value ['[{"text":"█","color":"red"},{"text":"████","color":"dark_gray"}]','{"text":"█████","color":"dark_gray"}']