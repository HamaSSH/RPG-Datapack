# アイテムを一つずつ返却
    data remove block 208 92 512 Items
    data modify block 208 92 512 Items append from storage menu:temp Data.return[0]
# プレイヤーのインベントリ状況に応じてgiveかspawnかを決定
    execute as @p run data modify storage menu:temp Inventory set from entity @s Inventory
    execute store result score $Inventory Temporary run data get storage menu:temp Inventory
    execute if data storage menu:temp Inventory[{Slot:100b}] run scoreboard players remove $Inventory Temporary 1
    execute if data storage menu:temp Inventory[{Slot:101b}] run scoreboard players remove $Inventory Temporary 1
    execute if data storage menu:temp Inventory[{Slot:102b}] run scoreboard players remove $Inventory Temporary 1
    execute if data storage menu:temp Inventory[{Slot:103b}] run scoreboard players remove $Inventory Temporary 1
    execute if data storage menu:temp Inventory[{Slot:-106b}] run scoreboard players remove $Inventory Temporary 1
    execute if score $Inventory Temporary matches ..35 run loot give @p mine 208 92 512 barrier
    execute if score $Inventory Temporary matches 36.. run loot spawn ~ ~ ~ mine 208 92 512 barrier
# 返却するアイテムがなくなるまで再帰
    data remove storage menu:temp Data.return[0]
    scoreboard players remove $NumOfItems Temporary 1
    execute if score $NumOfItems Temporary matches 1.. run function menu:return_item/rec
# リセット
    data remove storage menu:temp Inventory
    scoreboard players reset $Inventory
    scoreboard players reset $NumOfItems