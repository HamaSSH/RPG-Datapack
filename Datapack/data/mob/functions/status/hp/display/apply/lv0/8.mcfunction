##########
#>
#

execute if score @s hp_ratio matches 17 run data modify storage mob:temp Name.HPBar1h set value '[{"text":"████▏","color":"yellow"},{"text":"▊","color":"dark_gray"}]'
execute if score @s hp_ratio matches 17 run data modify storage mob:temp Name.HPBar2h set value '{"text":"█████","color":"dark_gray"}'
execute if score @s hp_ratio matches 18 run data modify storage mob:temp Name.HPBar1h set value '[{"text":"████▍","color":"yellow"},{"text":"▌","color":"dark_gray"}]'
execute if score @s hp_ratio matches 18 run data modify storage mob:temp Name.HPBar2h set value '{"text":"█████","color":"dark_gray"}'