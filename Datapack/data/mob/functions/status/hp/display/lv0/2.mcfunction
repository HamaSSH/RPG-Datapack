##########
#>
#

execute if score @s HPRatio matches 5 run data modify storage mob: Space.HPBar set value ['[{"text":"█▏","color":"red"},{"text":"▊███","color":"dark_gray"}]','{"text":"█████","color":"dark_gray"}']
execute if score @s HPRatio matches 6 run data modify storage mob: Space.HPBar set value ['[{"text":"█▍","color":"red"},{"text":"▌███","color":"dark_gray"}]','{"text":"█████","color":"dark_gray"}']