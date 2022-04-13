# 対応するスロットのアイテムのデータを格納
    execute if entity @s[tag=ConsumeOffhand] run data modify storage core:temp Data set from entity @s Inventory[{Slot:-106b}]
    execute if entity @s[tag=ConsumeMainhand] run data modify storage core:temp Data set from entity @s SelectedItem
# GApple ↔ EnchGApple 置き換え＋カウントを減らす
    execute store result storage core:temp Data.Count byte 0.999 run data get storage core:temp Data.Count
    execute if data storage core:temp Data{id:"minecraft:golden_apple"} run data modify storage core:temp Data.newId set value "minecraft:enchanted_golden_apple"
    execute if data storage core:temp Data{id:"minecraft:enchanted_golden_apple"} run data modify storage core:temp Data.newId set value "minecraft:golden_apple"
    data modify storage core:temp Data.id set from storage core:temp Data.newId
    data modify storage core:temp Data.Slot set value 0b
    data remove storage core:temp Data.newId
# プレイヤーにアイテムを戻す
    data remove block 0 0 0 Items
    data modify block 0 0 0 Items append from storage core:temp Data
    execute if entity @s[tag=ConsumeOffhand] run loot replace entity @s weapon.offhand 1 mine 0 0 0 barrier
    execute if entity @s[tag=ConsumeMainhand] run loot replace entity @s weapon.mainhand 1 mine 0 0 0 barrier
# アイテムの情報をmarkerに受け渡す
    summon marker 0 0 0 {Tags:["ConsumeTempInit","ConsumeTemp"]}
    execute positioned 0 0 0 as @e[type=marker,tag=ConsumeTempInit,distance=..0.01,limit=1] run function core:trigger/consume_item/store_data
# 1tick後に食べた処理呼び出し
    advancement grant @s only core:trigger/consume_item/_ tick0
# リセット
    data remove storage core:temp Data
    tag @s remove ConsumingItem
    tag @s remove ConsumeOffhand
    tag @s remove ConsumeMainhand
    scoreboard players set @s ConsumeItem 0
    scoreboard players set @s ConsumingItem 0