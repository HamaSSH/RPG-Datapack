#> player:status/update
# ステータスの更新

# ⓵基礎ステータス
    scoreboard players operation @s HPMax = @s BaseHPMax
    scoreboard players operation @s MPMax = @s BaseMPMax
    scoreboard players operation @s HPRegen = @s BaseHPR
    scoreboard players operation @s MPRegen = @s BaseMPR
    scoreboard players operation @s STR = @s BaseSTR
    scoreboard players operation @s INT = @s BaseINT
    scoreboard players operation @s DEX = @s BaseDEX
    scoreboard players operation @s DEF = @s BaseDEF
    scoreboard players operation @s AGI = @s BaseAGI
    scoreboard players operation @s CRT = @s BaseCRT
    scoreboard players operation @s LUK = @s BaseLUK

# ⓶補正ステータス
    # 装備をストレージに格納
        data modify storage player: ItemData.Offhand set from storage player: Inventory[{Slot:-106b,tag:{Offhand:1b}}]
        data modify storage player: ItemData.Helmet set from storage player: Inventory[{Slot:103b,tag:{Equipment:"Helmet"}}]
        data modify storage player: ItemData.Chestplate set from storage player: Inventory[{Slot:102b,tag:{Equipment:"Chestplate"}}]
        data modify storage player: ItemData.Leggings set from storage player: Inventory[{Slot:101b,tag:{Equipment:"Leggings"}}]
        data modify storage player: ItemData.Boots set from storage player: Inventory[{Slot:100b,tag:{Equipment:"Boots"}}]
        data modify storage player: ItemData.Accessory1 set from storage player: Inventory[{Slot:9b,tag:{Equipment:"Accessory"}}]
        data modify storage player: ItemData.Accessory2 set from storage player: Inventory[{Slot:10b,tag:{Equipment:"Accessory"}}]
        data modify storage player: ItemData.Accessory3 set from storage player: Inventory[{Slot:11b,tag:{Equipment:"Accessory"}}]
    # 装備ごとの補正ステータス
        execute if data storage player: SelectedItem.tag.Bonus run function player:item_data/mainhand
        execute if data storage player: ItemData.Offhand.tag.Bonus run function player:item_data/offhand
        execute if data storage player: ItemData.Helmet.tag.Bonus run function player:item_data/helmet
        execute if data storage player: ItemData.Chestplate.tag.Bonus run function player:item_data/chestplate
        execute if data storage player: ItemData.Leggings.tag.Bonus run function player:item_data/leggings
        execute if data storage player: ItemData.Boots.tag.Bonus run function player:item_data/boots
        execute if data storage player: ItemData.Accessory1.tag.Bonus run function player:item_data/accessory1
        execute if data storage player: ItemData.Accessory2.tag.Bonus run function player:item_data/accessory2
        execute if data storage player: ItemData.Accessory3.tag.Bonus run function player:item_data/accessory3
    scoreboard players operation @s HPMax += @s BonusHPMax
    scoreboard players operation @s MPMax += @s BonusMPMax
    scoreboard players operation @s HPRegen += @s BonusHPR
    scoreboard players operation @s MPRegen += @s BonusMPR
    scoreboard players operation @s STR += @s BonusSTR
    scoreboard players operation @s INT += @s BonusINT
    scoreboard players operation @s DEX += @s BonusDEX
    scoreboard players operation @s DEF += @s BonusDEF
    scoreboard players operation @s AGI += @s BonusAGI
    scoreboard players operation @s CRT += @s BonusCRT
    scoreboard players operation @s LUK += @s BonusLUK

# ⓷適正武器による補正ステータス
    execute if predicate player:class/weapon/any_of run function player:class/weapon

# ⓸バフによる補正
    scoreboard players operation @s HPMax += @s BuffHPMax
    scoreboard players operation @s MPMax += @s BuffMPMax
    scoreboard players operation @s HPRegen += @s BuffHPR
    scoreboard players operation @s MPRegen += @s BuffMPR
    scoreboard players operation @s STR += @s BuffSTR
    scoreboard players operation @s INT += @s BuffINT
    scoreboard players operation @s DEX += @s BuffDEX
    scoreboard players operation @s DEF += @s BuffDEF
    scoreboard players operation @s AGI += @s BuffAGI
    scoreboard players operation @s CRT += @s BuffCRT
    scoreboard players operation @s LUK += @s BuffLUK

# ⓹最大値を超えないよう調整
    execute if score @s MPMax matches 16383.. run scoreboard players set @s MPMax 16383
    execute if score @s DEF matches 1024.. run scoreboard players set @s DEF 1024
    execute if score @s AGI matches 1024.. run scoreboard players set @s AGI 1024
    execute if score @s CRT matches 1024.. run scoreboard players set @s CRT 1024
    execute if score @s LUK matches 1024.. run scoreboard players set @s LUK 1024

# ⓺最小値を下回らないよう調整
    execute if score @s HPMax matches ..5 run scoreboard players set @s HPMax 5
    execute if score @s MPMax matches ..0 run scoreboard players set @s MPMax 0
    execute if score @s HPRegen matches ..0 run scoreboard players set @s HPRegen 0
    execute if score @s MPRegen matches ..0 run scoreboard players set @s MPRegen 0
    execute if score @s STR matches ..0 run scoreboard players set @s STR 0
    execute if score @s INT matches ..0 run scoreboard players set @s INT 0
    execute if score @s DEX matches ..0 run scoreboard players set @s DEX 0
    execute if score @s DEF matches ..0 run scoreboard players set @s DEF 0
    execute if score @s CRT matches ..0 run scoreboard players set @s CRT 0
    execute if score @s LUK matches ..0 run scoreboard players set @s LUK 0

# ⓻attributeの設定
    execute unless score @s PreviousAGI = @s AGI run function player:status/agi/movement_speed

# リセット
    data remove storage player: ItemData
    scoreboard players reset @s BonusHPMax
    scoreboard players reset @s BonusMPMax
    scoreboard players reset @s BonusHPR
    scoreboard players reset @s BonusMPR
    scoreboard players reset @s BonusSTR
    scoreboard players reset @s BonusINT
    scoreboard players reset @s BonusDEX
    scoreboard players reset @s BonusDEF
    scoreboard players reset @s BonusAGI
    scoreboard players reset @s BonusCRT
    scoreboard players reset @s BonusLUK
    tag @s remove StatusUpdate