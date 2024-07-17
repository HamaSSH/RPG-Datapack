#> ui:shop/sell/value
# 売価の取得

# $Value*$Count = $TotalValue
    execute store result score $Count Temporary run data get storage ui: ItemData[0].count
    execute store result score $Value Temporary run data get storage ui: ItemData[0].components.minecraft:custom_data.value
    scoreboard players operation $Value Temporary *= $Count Temporary
    scoreboard players operation $TotalValue Temporary += $Value Temporary
    scoreboard players operation $TotalCount Temporary += $Count Temporary
    scoreboard players reset $Count Temporary
    scoreboard players reset $Value Temporary

# レア度の高いアイテムを売る実績
    execute if data storage ui: ItemData[{components:{"minecraft:custom_data":{rarity:4}}}] on vehicle on vehicle on attacker run advancement grant @s only asset:achievement/3.2
    execute if data storage ui: ItemData[{components:{"minecraft:custom_data":{rarity:5}}}] on vehicle on vehicle on attacker run advancement grant @s only asset:achievement/3.2

# 売却するアイテムが無くなるまで再帰
    data remove storage ui: ItemData[0]
    execute unless data storage ui: ItemData[] run data remove storage ui: ItemData
    execute if data storage ui: ItemData[] run function ui:shop/sell/value