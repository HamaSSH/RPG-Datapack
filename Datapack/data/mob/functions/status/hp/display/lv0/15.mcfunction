##########
#>
#

execute if score @s HPRatio matches 31 run data modify storage mob: Space.HPBar set value ['{"text":"█████","color":"green"}','[{"text":"██▋","color":"green"},{"text":"▎██","color":"dark_gray"}]']
execute if score @s HPRatio matches 32 run data modify storage mob: Space.HPBar set value ['{"text":"█████","color":"green"}','[{"text":"███","color":"green"},{"text":"██","color":"dark_gray"}]']