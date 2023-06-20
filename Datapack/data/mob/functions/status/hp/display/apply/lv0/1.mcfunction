##########
#>
#

execute if score @s hp_ratio matches 3 run data modify storage mob:temp Name.HPBar1h set value '[{"text":"▋","color":"red"},{"text":"▎████","color":"dark_gray"}]'
execute if score @s hp_ratio matches 3 run data modify storage mob:temp Name.HPBar2h set value '{"text":"█████","color":"dark_gray"}'
execute if score @s hp_ratio matches 4 run data modify storage mob:temp Name.HPBar1h set value '[{"text":"█","color":"red"},{"text":"████","color":"dark_gray"}]'
execute if score @s hp_ratio matches 4 run data modify storage mob:temp Name.HPBar2h set value '{"text":"█████","color":"dark_gray"}'