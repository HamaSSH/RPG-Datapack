# CustomModelDataに応じたアイテムをgive
    data remove block 0 0 0 Items
    execute if data storage menu:temp Data.buy.tag{CustomModelData:3101} run loot replace block 0 0 0 container.0 loot item:3101/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:3102} run loot replace block 0 0 0 container.0 loot item:3102/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:3103} run loot replace block 0 0 0 container.0 loot item:3103/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:3104} run loot replace block 0 0 0 container.0 loot item:3104/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:3105} run loot replace block 0 0 0 container.0 loot item:3105/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:3106} run loot replace block 0 0 0 container.0 loot item:3106/_
# プレイヤーのインベントリ状況に応じてgiveかspawnかを決定
    data modify block 0 0 0 Items[0].Count set from storage menu:temp Data.buy.Count
    function menu:return_item/loot