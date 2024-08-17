#> ui:cooking/cook/set_result/add_count
# スロットの完成品操作

# countが増やせたら増やす
    $execute store result score $Count Temporary run data get storage ui: Items[{Slot:$(Slot)}].count
    $execute store result score $MaxStackSize Temporary run data get storage ui: Items[{Slot:$(Slot)}].components.minecraft:custom_data.max_stack_size
    execute if score $Count Temporary < $MaxStackSize Temporary run tag @s remove SetResult
    execute if score $Count Temporary < $MaxStackSize Temporary run scoreboard players add $Count Temporary 1
    $execute store result storage ui: Items[{Slot:$(Slot)}].count int 1 run scoreboard players get $Count Temporary

# リセット
    scoreboard players reset $Count Temporary
    scoreboard players reset $MaxStackSize Temporary