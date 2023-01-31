##########
#>
#

execute if score @s hp_ratio matches 33 run data modify storage mob:temp Name.HPBar1h set value '{"text":"█████","color":"green"}'
execute if score @s hp_ratio matches 33 run data modify storage mob:temp Name.HPBar2h set value '[{"text":"███▏","color":"green"},{"text":"▊█","color":"dark_gray"}]'
execute if score @s hp_ratio matches 34 run data modify storage mob:temp Name.HPBar1h set value '{"text":"█████","color":"green"}'
execute if score @s hp_ratio matches 34 run data modify storage mob:temp Name.HPBar2h set value '[{"text":"███▍","color":"green"},{"text":"▌█","color":"dark_gray"}]'