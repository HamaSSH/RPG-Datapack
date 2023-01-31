##########
#>
#

execute if score @s hp_ratio matches 11 run data modify storage mob:temp Name.HPBar1h set value '[{"text":"██▋","color":"yellow"},{"text":"▎██","color":"dark_gray"}]'
execute if score @s hp_ratio matches 11 run data modify storage mob:temp Name.HPBar2h set value '{"text":"█████","color":"dark_gray"}'
execute if score @s hp_ratio matches 12 run data modify storage mob:temp Name.HPBar1h set value '[{"text":"███","color":"yellow"},{"text":"██","color":"dark_gray"}]'
execute if score @s hp_ratio matches 12 run data modify storage mob:temp Name.HPBar2h set value '{"text":"█████","color":"dark_gray"}'