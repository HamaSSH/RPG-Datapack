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
        data modify storage player: Inventory set from entity @s Inventory
        data modify storage player: Mainhand set from entity @s SelectedItem
    # 装備ごとの補正ステータス
        # execute if data storage player: Mainhand.tag.Weapon run function player:item_data/mainhand
    # 適正武器による補正ステータス
        # function player:class/
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

# ⓷バフによる補正
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

# ⓸最大値を超えないよう調整
    execute if score @s MPMax matches 16383.. run scoreboard players set @s MPMax 16383
    execute if score @s DEF matches 1024.. run scoreboard players set @s DEF 1024
    execute if score @s AGI matches 1024.. run scoreboard players set @s AGI 1024
    execute if score @s CRT matches 1024.. run scoreboard players set @s CRT 1024
    execute if score @s LUK matches 1024.. run scoreboard players set @s LUK 1024

# ⓹最小値を下回らないよう調整
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

# ⓺attributeの設定
    execute unless score @s PreviousAGI = @s AGI run function player:status/agi/movement_speed

# リセット
    data remove storage player: Inventory
    data remove storage player: SelectedItem
    data remove storage player: ItemData