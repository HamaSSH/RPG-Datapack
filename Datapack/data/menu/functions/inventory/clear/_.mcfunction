# InventoryにData.clear内のアイテムが十分にあるか調べてNewInvを生成
    data remove storage menu:temp Data.NewInv
    execute store result score $Required Temporary run data get storage menu:temp Data.clear[0].Count
    execute if data storage menu:temp Data.Inventory[0] run function menu:inventory/new/_
    data modify storage menu:temp Data.Inventory set from storage menu:temp Data.NewInv
# Data.clear内にまだアイテムがあれば再帰
    data remove storage menu:temp Data.clear[0]
    execute if score $Required Temporary matches ..0 if data storage menu:temp Data.clear[0] run function menu:inventory/clear/_