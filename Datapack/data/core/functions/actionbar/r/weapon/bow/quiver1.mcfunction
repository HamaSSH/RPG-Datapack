##########
#>
#

# 矢筒と弓矢を同時に表示
    execute if score @s Arrow matches ..9 run data modify storage actionbar:temp iconR set value '[{"text":"\\uE0C1"},"\\uF807",{"score":{"name":"@s","objective":"Arrow"},"font":"resource:descent31"},"\\uF821"]'
    execute if score @s Arrow matches 10..999 run data modify storage actionbar:temp iconR set value '[{"text":"\\uE0C1"},"\\uF808\\uF805",{"score":{"name":"@s","objective":"Arrow"},"font":"resource:descent31"},"\\uF821"]'
    execute if score @s Arrow matches 100..999 run data modify storage actionbar:temp iconR set value '[{"text":"\\uE0C1"},"\\uF809\\uF803",{"score":{"name":"@s","objective":"Arrow"},"font":"resource:descent31"},"\\uF821"]'
    execute if score @s Arrow matches 1000.. run data modify storage actionbar:temp iconR set value '[{"text":"\\uE0C1"},"\\uF809\\uF803",{"text":"999+","font":"resource:descent31"},"\\uF805"]'