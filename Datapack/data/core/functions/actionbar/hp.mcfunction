##########
#>
#

# HPが赤く点滅
    execute if score @s HurtTime matches 0 run data modify storage actionbar:temp hp set value '{"score":{"name":"@s","objective":"hp"},"font":"resource:descent16"}'
    execute if score @s HurtTime matches 1..4 run data modify storage actionbar:temp hp set value '{"score":{"name":"@s","objective":"hp"},"color":"#FF3838","font":"resource:descent16"}'
    execute if score @s HurtTime matches 5..6 run data modify storage actionbar:temp hp set value '{"score":{"name":"@s","objective":"hp"},"font":"resource:descent16"}'
    execute if score @s HurtTime matches 7..10 run data modify storage actionbar:temp hp set value '{"score":{"name":"@s","objective":"hp"},"color":"#FF3838","font":"resource:descent16"}'