execute if score @s hp_ratio matches 3 run data modify storage mob:temp Name.HPBar1h set value '[{"text":"▋","color":"red"},{"text":"▎████","color":"dark_gray"}]'
execute if score @s hp_ratio matches 3 run data modify storage mob:temp Name.HPBar2h set value '{"text":"█████","color":"dark_gray"}'
execute if score @s hp_ratio matches 4 run data modify storage mob:temp Name.HPBar1h set value '[{"text":"█","color":"red"},{"text":"████","color":"dark_gray"}]'
execute if score @s hp_ratio matches 4 run data modify storage mob:temp Name.HPBar2h set value '{"text":"█████","color":"dark_gray"}'

#data modify entity 2b5e16ae-101c-41ac-9eca-f5e23bae465b CustomName set value '[{"text":"","font":"resource:_"},{"text":"▊","color":"dark_red"},{"text":"▎█████████","color":"dark_gray"},"\\uF80a\\uF809\\uF823","ゾンビ","\\uF82B\\uF82A\\uF823"]'
#data modify entity 2b5e16ae-101c-41ac-9eca-f5e23bae465b CustomName set value '[{"text":"","font":"resource:_"},{"text":"▊","color":"dark_red"},{"text":"▎████","color":"dark_gray"},"\\uF804\\uF804\\uF804\\uF802\\uF808\\uF801\\uF803\\uF803","ゾンビ Lv. 21","\\uF804\\uF804\\uF804\\uF801\\uF801\\uF801\\uF802\\uF808\\uF801\\uF803\\uF803",{"text":"█████","color":"dark_gray"}]'
#data modify entity 2b5e16ae-101c-41ac-9eca-f5e23bae465b CustomName set value '[{"text":"","font":"resource:_"},{"text":"▊","color":"dark_red"},{"text":"▎████","color":"dark_gray"},"\\uF804\\uF804\\uF804\\uF804\\uF804",{"nbt":"Name.Level","storage":"mob:temp","interpret":true,"font":"resource:_"},"スケルトン Lv. 21","\\uF804\\uF804\\uF804\\uF804\\uF804",{"nbt":"Name.Level","storage":"mob:temp","interpret":true,"font":"resource:_"},{"text":"█████","color":"dark_gray"}]'


#data modify storage mob:temp Name.HPBar1h set value '[{"text":"▌","color":"dark_red"},{"text":"▌████","color":"dark_gray"}]'
#data modify storage mob:temp Name.HPBar2h set value '{"text":"█████","color":"dark_gray"}'