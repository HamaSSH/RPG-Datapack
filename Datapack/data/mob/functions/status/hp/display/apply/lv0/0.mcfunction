##########
#>
#

execute if score @s hp_ratio matches ..0 run data modify storage mob:temp Name.HPBar1h set value '{"text":"█████","color":"dark_gray"}'
execute if score @s hp_ratio matches ..0 run data modify storage mob:temp Name.HPBar2h set value '{"text":"█████","color":"dark_gray"}'
execute if score @s hp_ratio matches 1 run data modify storage mob:temp Name.HPBar1h set value '[{"text":"▏","color":"dark_red"},{"text":"▊████","color":"dark_gray"}]'
execute if score @s hp_ratio matches 1 run data modify storage mob:temp Name.HPBar2h set value '{"text":"█████","color":"dark_gray"}'
execute if score @s hp_ratio matches 2 run data modify storage mob:temp Name.HPBar1h set value '[{"text":"▍","color":"dark_red"},{"text":"▌████","color":"dark_gray"}]'
execute if score @s hp_ratio matches 2 run data modify storage mob:temp Name.HPBar2h set value '{"text":"█████","color":"dark_gray"}'