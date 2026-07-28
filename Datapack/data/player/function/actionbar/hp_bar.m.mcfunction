#> player:actionbar/hp_bar.m
# 最大HPごとのHPバー表示

execute if score $MaxHP Temporary matches ..9 run data modify storage player:temp hp_bar set value {text:"\uE211",shadow_color:0}
$data modify storage player:temp hp_bar set value {text:"\uE2$(value)",shadow_color:0}
execute if score $MaxHP Temporary matches 50.. run data modify storage player:temp hp_bar set value {text:"\uE250",shadow_color:0}