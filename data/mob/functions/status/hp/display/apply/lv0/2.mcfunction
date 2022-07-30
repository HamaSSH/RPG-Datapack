execute if score @s hp_ratio matches 5 run data modify storage mob:temp Name.HPBar1h set value '[{"text":"█▏","color":"red"},{"text":"▊███","color":"dark_gray"}]'
execute if score @s hp_ratio matches 5 run data modify storage mob:temp Name.HPBar2h set value '{"text":"█████","color":"dark_gray"}'
execute if score @s hp_ratio matches 6 run data modify storage mob:temp Name.HPBar1h set value '[{"text":"█▍","color":"red"},{"text":"▌███","color":"dark_gray"}]'
execute if score @s hp_ratio matches 6 run data modify storage mob:temp Name.HPBar2h set value '{"text":"█████","color":"dark_gray"}'