##########
#>
#

execute if score @s hp_ratio matches 15 run data modify storage mob:temp Name.HPBar1h set value '[{"text":"███▋","color":"yellow"},{"text":"▎█","color":"dark_gray"}]'
execute if score @s hp_ratio matches 15 run data modify storage mob:temp Name.HPBar2h set value '{"text":"█████","color":"dark_gray"}'
execute if score @s hp_ratio matches 16 run data modify storage mob:temp Name.HPBar1h set value '[{"text":"████","color":"yellow"},{"text":"█","color":"dark_gray"}]'
execute if score @s hp_ratio matches 16 run data modify storage mob:temp Name.HPBar2h set value '{"text":"█████","color":"dark_gray"}'