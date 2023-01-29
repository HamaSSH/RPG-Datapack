# 売却額の加算
    execute store result score $SellPrice Temporary run data get storage menu:temp Data.sell[0].tag.sell
    execute store result score $Count Temporary run data get storage menu:temp Data.sell[0].Count
    scoreboard players operation $SellPrice Temporary *= $Count Temporary
    scoreboard players operation $TotalSellPrice Temporary += $SellPrice Temporary
    scoreboard players operation $TotalCount Temporary += $Count Temporary
# アイテムが無くなるまで再帰
    data remove storage menu:temp Data.sell[0]
    execute if data storage menu:temp Data.sell[0] run function menu:shop/sell/price