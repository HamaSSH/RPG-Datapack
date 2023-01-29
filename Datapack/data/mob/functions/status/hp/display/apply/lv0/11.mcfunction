execute if score @s hp_ratio matches 23 run data modify storage mob:temp Name.HPBar1h set value '{"text":"█████","color":"green"}'
execute if score @s hp_ratio matches 23 run data modify storage mob:temp Name.HPBar2h set value '[{"text":"▋","color":"green"},{"text":"▎████","color":"dark_gray"}]'
execute if score @s hp_ratio matches 24 run data modify storage mob:temp Name.HPBar1h set value '{"text":"█████","color":"green"}'
execute if score @s hp_ratio matches 24 run data modify storage mob:temp Name.HPBar2h set value '[{"text":"█","color":"green"},{"text":"████","color":"dark_gray"}]'