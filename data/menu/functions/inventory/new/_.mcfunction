# InventoryのアイテムをNewInvに追加
    data modify storage menu:temp Data.NewInv append from storage menu:temp Data.Inventory[-1]
# もしclearするべきアイテムであればCountの置き換え
    execute store success score $notEqual Temporary run data modify storage menu:temp Data.Inventory[-1].tag.CustomModelData set from storage menu:temp Data.clear[0].tag.CustomModelData
    execute if score $notEqual Temporary matches 0 run function menu:inventory/clear/count
# Inventoryの末尾データを削除
    data remove storage menu:temp Data.Inventory[-1]
# リセット
    scoreboard players reset $notEqual
# まだアイテムがある場合再帰
    execute if score $Required Temporary matches ..0 if data storage menu:temp Data.Inventory[0] run data modify storage menu:temp Data.NewInv append from storage menu:temp Data.Inventory[]
    execute if score $Required Temporary matches 1.. if data storage menu:temp Data.Inventory[0] run function menu:inventory/new/_