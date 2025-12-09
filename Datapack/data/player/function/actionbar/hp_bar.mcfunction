#> player:actionbar/hp_bar
# 最大HPごとのHPバー表示

$data modify storage player:temp hp_bar set value ["",{"text":"\uE2$(value)","shadow_color":0}]
execute if score $MaxHP Temporary matches 50.. run data modify storage player:temp hp_bar set value ["",{"text":"\uE250","shadow_color":0}]