##########
#>
#

# CustomModelDataに応じたアイテムをgive
    data remove block 0 0 0 Items
    execute if data storage menu:temp Data.buy.tag{CustomModelData:5101} run loot replace block 0 0 0 container.0 loot item:5101/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:5201} run loot replace block 0 0 0 container.0 loot item:5201/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:5301} run loot replace block 0 0 0 container.0 loot item:5301/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:5401} run loot replace block 0 0 0 container.0 loot item:5401/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:5501} run loot replace block 0 0 0 container.0 loot item:5501/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:3103} run loot replace block 0 0 0 container.0 loot item:3103/_