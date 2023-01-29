execute if score @s hp_ratio matches 29 run data modify storage mob:temp Name.HPBar1h set value '{"text":"█████","color":"green"}'
execute if score @s hp_ratio matches 29 run data modify storage mob:temp Name.HPBar2h set value '[{"text":"██▏","color":"green"},{"text":"▊██","color":"dark_gray"}]'
execute if score @s hp_ratio matches 30 run data modify storage mob:temp Name.HPBar1h set value '{"text":"█████","color":"green"}'
execute if score @s hp_ratio matches 30 run data modify storage mob:temp Name.HPBar2h set value '[{"text":"██▍","color":"green"},{"text":"▌██","color":"dark_gray"}]'