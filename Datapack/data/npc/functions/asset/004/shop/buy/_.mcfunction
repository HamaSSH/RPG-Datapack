##########
#>
#

# CustomModelDataに応じたアイテムをgive
    data remove block 0 0 0 Items
    execute if data storage menu:temp Data.buy.tag{CustomModelData:3201} run loot replace block 0 0 0 container.0 loot item:3201/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:3301} run loot replace block 0 0 0 container.0 loot item:3301/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:3401} run loot replace block 0 0 0 container.0 loot item:3401/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:3501} run loot replace block 0 0 0 container.0 loot item:3501/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:3101} run loot replace block 0 0 0 container.0 loot item:3101/_
    execute if data storage menu:temp Data.buy.tag{CustomModelData:1605} run loot replace block 0 0 0 container.0 loot item:1605/_