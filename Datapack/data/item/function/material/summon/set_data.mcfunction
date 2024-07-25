#> item:material/summon/set_data
# 採集ポイントアマスタの初期化

# 共通データの設定
    tag @s add Material

# データの設定
    data modify entity @s DeathLootTable set from storage asset:material LootTable
    data modify entity @s ArmorItems set value [{},{},{},{id:"glass_bottle"}]
    data modify entity @s ArmorItems[3].components.minecraft:custom_data.HP set from storage asset:material Data.HP
    data modify entity @s ArmorItems[3].components.minecraft:custom_data.MaxHP set from storage asset:material Data.HP
    data modify entity @s ArmorItems[3].components.minecraft:custom_data.ID set from storage asset:material Data.ID

# 見た目の設定
    execute summon item_display run function item:material/summon/set_display with storage asset:material Data

# HPバーの設定
    execute if data storage asset:material Data{HP:2} run data modify entity @s CustomName set value '[{"text":"■■","color":"green"},"\\uF801"]'
    execute if data storage asset:material Data{HP:3} run data modify entity @s CustomName set value '[{"text":"■■■","color":"green"},"\\uF801"]'
    execute if data storage asset:material Data{HP:4} run data modify entity @s CustomName set value '[{"text":"■■■■","color":"green"},"\\uF801"]'
    execute if data storage asset:material Data{HP:5} run data modify entity @s CustomName set value '[{"text":"■■■■■","color":"green"},"\\uF801"]'

# リセット
    data remove storage asset:material Data
    tag @s remove MaterialInit