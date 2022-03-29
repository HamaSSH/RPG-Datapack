# アイテムを一つずつ返却
    data remove block 0 0 0 Items
    data modify block 0 0 0 Items append from storage menu:temp Data.return[0]
    function menu:return_item/loot
# 返却するアイテムがなくなるまで再帰
    data remove storage menu:temp Data.return[0]
    execute if data storage menu:temp Data.return[] run function menu:return_item/rec