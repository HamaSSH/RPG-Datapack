# 武器の強化回数(Grade)に応じたアイテムをgive
    data remove block 0 0 0 Items
    execute if data storage menu:temp Data{grade:0} run loot replace block 0 0 0 container.0 loot item:3301/_1
    execute if data storage menu:temp Data{grade:1} run loot replace block 0 0 0 container.0 loot item:3301/_2
    execute if data storage menu:temp Data{grade:2} run loot replace block 0 0 0 container.0 loot item:3301/_3