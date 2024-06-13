#> ui:shop/sell/price
# 売価の取得

# $Price*$Count = $TotalPrice
    execute store result score $Count Temporary run data get storage ui: ItemData[0].count
    execute store result score $Price Temporary run data get storage ui: ItemData[0].components.minecraft:custom_data.sell
    scoreboard players operation $Price Temporary *= $Count Temporary
    scoreboard players operation $TotalPrice Temporary += $Price Temporary
    scoreboard players operation $TotalCount Temporary += $Count Temporary
    scoreboard players reset $Count Temporary
    scoreboard players reset $Price Temporary

# 売却するアイテムが無くなるまで再帰
    data remove storage ui: ItemData[0]
    execute unless data storage ui: ItemData[] run data remove storage ui: ItemData
    execute if data storage ui: ItemData[] run function ui:shop/sell/price