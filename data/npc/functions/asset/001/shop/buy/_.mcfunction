# CustomModelDataに応じたアイテムをgive
    data remove block 0 0 0 Items
    execute if data storage menu:temp Data.buy.tag{CustomModelData:8101} run loot replace block 0 0 0 container.0 loot item:8101/_0
    execute if data storage menu:temp Data.buy.tag{CustomModelData:8201} run loot replace block 0 0 0 container.0 loot item:8201/_0
    execute if data storage menu:temp Data.buy.tag{CustomModelData:8301} run loot replace block 0 0 0 container.0 loot item:8301/_0
    execute if data storage menu:temp Data.buy.tag{CustomModelData:8401} run loot replace block 0 0 0 container.0 loot item:8401/_0
    execute if data storage menu:temp Data.buy.tag{CustomModelData:8501} run loot replace block 0 0 0 container.0 loot item:8501/_0
    execute if data storage menu:temp Data.buy.tag{CustomModelData:8601} run loot replace block 0 0 0 container.0 loot item:8601/_0
# プレイヤーのインベントリ状況に応じてgiveかspawnかを決定
    data modify block 0 0 0 Items[0].Count set from storage menu:temp Data.buy.Count
    function menu:return_item/loot