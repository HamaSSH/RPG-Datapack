##########
#>
#

# CustomModelDataに応じたアイテムをgive
    data remove block 0 0 0 Items
    execute if data storage menu:temp Data.buy.tag{CustomModelData:2101} run loot replace block 0 0 0 container.0 loot item:2101/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:2201} run loot replace block 0 0 0 container.0 loot item:2201/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:2301} run loot replace block 0 0 0 container.0 loot item:2301/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:2401} run loot replace block 0 0 0 container.0 loot item:2401/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:2501} run loot replace block 0 0 0 container.0 loot item:2501/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:2601} run loot replace block 0 0 0 container.0 loot item:2601/_