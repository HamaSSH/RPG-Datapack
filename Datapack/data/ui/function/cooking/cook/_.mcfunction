#> ui:cooking/cook/multiple
# 料理処理

tag @s add SetResult

# 作成数の決定
    execute if data storage ui: NewItems[{Slot:10b}] store result score $Slot10bCount Temporary run data get storage ui: NewItems[{Slot:10b}].count
    execute if data storage ui: NewItems[{Slot:11b}] store result score $Slot11bCount Temporary run data get storage ui: NewItems[{Slot:11b}].count
    execute if data storage ui: NewItems[{Slot:12b}] store result score $Slot12bCount Temporary run data get storage ui: NewItems[{Slot:12b}].count
    scoreboard players operation $CookCount Temporary = $Slot10bCount Temporary
    execute if score $CookCount Temporary matches 0 run scoreboard players operation $CookCount Temporary = $Slot11bCount Temporary
    execute if score $CookCount Temporary matches 0 run scoreboard players operation $CookCount Temporary = $Slot12bCount Temporary
    execute if score $CookCount Temporary >= $Slot11bCount Temporary run scoreboard players operation $CookCount Temporary = $Slot11bCount Temporary
    execute if score $CookCount Temporary >= $Slot12bCount Temporary run scoreboard players operation $CookCount Temporary = $Slot12bCount Temporary
    execute if data storage ui: {craft_type:"single"} run scoreboard players set $CookCount Temporary 1

# 素材アイテムの消費
    execute store result storage ui: NewItems[{Slot:10b}].count byte 1 run scoreboard players operation $Slot10bCount Temporary -= $CookCount Temporary
    execute store result storage ui: NewItems[{Slot:11b}].count byte 1 run scoreboard players operation $Slot11bCount Temporary -= $CookCount Temporary
    execute store result storage ui: NewItems[{Slot:12b}].count byte 1 run scoreboard players operation $Slot12bCount Temporary -= $CookCount Temporary
    data remove storage ui: NewItems[{count:0b}]

# 完成品の配置
    $loot replace block 0 0 0 container.0 loot asset:item/$(id)
    data modify storage ui: NewItems append from block 0 0 0 Items[{Slot:0b}]
    # スタックを増やす
        $execute if entity @s[tag=SetResult] if data storage ui: Items[{Slot:14b,components:{"minecraft:custom_data":{item_id:"$(id)"}}}] run function ui:cooking/cook/set_result/add_count {Slot:"14b"}
        $execute if entity @s[tag=SetResult] if data storage ui: Items[{Slot:15b,components:{"minecraft:custom_data":{item_id:"$(id)"}}}] run function ui:cooking/cook/set_result/add_count {Slot:"15b"}
        $execute if entity @s[tag=SetResult] if data storage ui: Items[{Slot:16b,components:{"minecraft:custom_data":{item_id:"$(id)"}}}] run function ui:cooking/cook/set_result/add_count {Slot:"16b"}
    # スタックが増やせなければ新規配置
        execute if entity @s[tag=SetResult] if data storage ui: Items[{Slot:14b,components:{"minecraft:custom_data":{ui:{item_type:"none"}}}}] run function ui:cooking/cook/set_result/new_slot {Slot:"14b"}
        execute if entity @s[tag=SetResult] if data storage ui: Items[{Slot:15b,components:{"minecraft:custom_data":{ui:{item_type:"none"}}}}] run function ui:cooking/cook/set_result/new_slot {Slot:"15b"}
        execute if entity @s[tag=SetResult] if data storage ui: Items[{Slot:16b,components:{"minecraft:custom_data":{ui:{item_type:"none"}}}}] run function ui:cooking/cook/set_result/new_slot {Slot:"16b"}
    # 全て埋まってたらreturn
        execute if entity @s[tag=SetResult] store result storage ui: NewItems[{Slot:0b}].count int 1 run scoreboard players get $CookCount Temporary
        execute if entity @s[tag=SetResult] run data modify storage ui: ReturnItems append from storage ui: NewItems[{Slot:0b}]
        execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
        execute if data storage ui: ReturnItems[] run function ui:return_item/_

# 演出
    playsound ui.stonecutter.take_result master @a ~ ~ ~ 0.4 1.4
    playsound block.scaffolding.step master @a ~ ~ ~ 0.65 1.4
    playsound item.firecharge.use master @a ~ ~ ~ 0.3 1.3

# リセット
    tag @s remove PlaysoundOnce
    data remove storage ui: NewItems[{Slot:0b}]
    scoreboard players reset $Slot10bCount Temporary
    scoreboard players reset $Slot11bCount Temporary
    scoreboard players reset $Slot12bCount Temporary
    scoreboard players reset $CookCount Temporary