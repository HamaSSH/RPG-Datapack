#> mob:status/hp/display/apply.m
# CustomNameの適用

# 名前表示＋戦闘中はHPバーを表示
    $data modify storage mob:temp custom_name set value [{text:"$(name)",color:"white"}]
    $execute if score @s InCombat matches 1.. run data modify storage mob:temp custom_name prepend from storage mob:def hp_bar.space[$(space)]
    $execute if score @s InCombat matches 1.. run data modify storage mob:temp custom_name append from storage mob:def hp_bar.space[$(space)]
    $execute if score @s InCombat matches 1.. run data modify storage mob:temp custom_name prepend from storage mob:def hp_bar.left[$(left)]
    $execute if score @s InCombat matches 1.. run data modify storage mob:temp custom_name append from storage mob:def hp_bar.right[$(right)]
    data modify entity @s CustomName set from storage mob:temp custom_name

# リセット
    data remove storage mob:temp custom_name
