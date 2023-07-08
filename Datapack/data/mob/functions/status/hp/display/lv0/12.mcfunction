##########
#>
#

execute if score @s HPRatio matches 25 run data modify storage mob: Space.HPBar set value ['{"text":"█████","color":"green"}','[{"text":"█▏","color":"green"},{"text":"▊███","color":"dark_gray"}]']
execute if score @s HPRatio matches 26 run data modify storage mob: Space.HPBar set value ['{"text":"█████","color":"green"}','[{"text":"█▍","color":"green"},{"text":"▌███","color":"dark_gray"}]']