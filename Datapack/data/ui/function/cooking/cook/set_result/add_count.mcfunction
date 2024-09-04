#> ui:cooking/cook/set_result/add_count
# スロットの完成品操作

# countを増やせる分だけ増やす
    # どれだけ増やせるか
        $execute store result score $Count Temporary run data get storage ui: Items[{Slot:$(Slot)}].count
        $execute store result score $MaxStackSize Temporary run data get storage ui: Items[{Slot:$(Slot)}].components.minecraft:custom_data.max_stack_size
        scoreboard players operation $RemainingStack Temporary = $MaxStackSize Temporary
        scoreboard players operation $RemainingStack Temporary -= $Count Temporary
    # 作りたい量CookCountと増やせる量RemainingStackの比較
        execute if score $CookCount Temporary <= $RemainingStack Temporary run scoreboard players operation $Count Temporary += $CookCount Temporary
        execute if score $CookCount Temporary <= $RemainingStack Temporary run tag @s remove SetResult
        execute if score $CookCount Temporary > $RemainingStack Temporary run scoreboard players operation $Count Temporary = $MaxStackSize Temporary
        execute if score $CookCount Temporary > $RemainingStack Temporary run scoreboard players operation $CookCount Temporary -= $RemainingStack Temporary
    # 指定量だけcountを増やす
        $execute store result storage ui: Items[{Slot:$(Slot)}].count int 1 run scoreboard players get $Count Temporary

# リセット
    scoreboard players reset $Count Temporary
    scoreboard players reset $MaxStackSize Temporary
    scoreboard players reset $RemainingStack Temporary