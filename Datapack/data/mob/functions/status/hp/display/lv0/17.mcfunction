##########
#>
#

execute if score @s HPRatio matches 35 run data modify storage mob: Space.HPBar set value ['{"text":"█████","color":"green"}','[{"text":"███▋","color":"green"},{"text":"▎█","color":"dark_gray"}]']
execute if score @s HPRatio matches 36 run data modify storage mob: Space.HPBar set value ['{"text":"█████","color":"green"}','[{"text":"████","color":"green"},{"text":"█","color":"dark_gray"}]']