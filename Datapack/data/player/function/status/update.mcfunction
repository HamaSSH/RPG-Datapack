#> player:status/update
# ステータスの更新

# ⓵基礎ステータス
    scoreboard players operation @s HPMax = @s BaseHP
    scoreboard players operation @s MPMax = @s BaseMP
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
    scoreboard players reset @s BonusHP
    scoreboard players reset @s BonusMP
    scoreboard players reset @s BonusHPR
    scoreboard players reset @s BonusMPR
    scoreboard players reset @s BonusSTR
    scoreboard players reset @s BonusINT
    scoreboard players reset @s BonusDEX
    scoreboard players reset @s BonusDEF
    scoreboard players reset @s BonusAGI
    scoreboard players reset @s BonusCRT
    scoreboard players reset @s BonusLUK
    # 装備をストレージに格納
        data modify storage player: BonusStatus append from storage player: Weapon.Mainhand.components.minecraft:custom_data.bonus[]
        data modify storage player: BonusStatus append from storage player: Weapon.Offhand.components.minecraft:custom_data.bonus[]
        data modify storage player: BonusStatus append from storage player: Equipment.Helmet.components.minecraft:custom_data.bonus[]
        data modify storage player: BonusStatus append from storage player: Equipment.Chestplate.components.minecraft:custom_data.bonus[]
        data modify storage player: BonusStatus append from storage player: Equipment.Leggings.components.minecraft:custom_data.bonus[]
        data modify storage player: BonusStatus append from storage player: Equipment.Boots.components.minecraft:custom_data.bonus[]
        data modify storage player: BonusStatus append from storage player: Equipment.Accessories[{Slot:9b}].components.minecraft:custom_data.bonus[]
        data modify storage player: BonusStatus append from storage player: Equipment.Accessories[{Slot:10b}].components.minecraft:custom_data.bonus[]
        data modify storage player: BonusStatus append from storage player: Equipment.Accessories[{Slot:11b}].components.minecraft:custom_data.bonus[]
    # 全ての装備分の補正ステータスをスコアに加算
        execute if data storage player: BonusStatus[] run function player:item_data/bonus_status with storage player: BonusStatus[0]
    scoreboard players operation @s HPMax += @s BonusHP
    scoreboard players operation @s MPMax += @s BonusMP
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
    execute if predicate player:class/weapon/hunter run function player:class/hunter/passive/update
    execute if predicate player:class/weapon/fighter run function player:class/fighter/passive/update
    execute if predicate player:class/weapon/paladin run function player:class/paladin/passive/update
    execute if predicate player:class/weapon/wizard run function player:class/wizard/passive/update

# ⓸バフによる補正
    scoreboard players operation @s HPMax += @s BuffHP
    scoreboard players operation @s MPMax += @s BuffMP
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
    execute if score @s HPMax matches 100000.. run scoreboard players set @s HPMax 100000
    execute if score @s MPMax matches 100000.. run scoreboard players set @s MPMax 100000
    execute if score @s DEF matches 999.. run scoreboard players set @s DEF 999
    execute if score @s AGI matches 999.. run scoreboard players set @s AGI 999
    execute if score @s CRT matches 999.. run scoreboard players set @s CRT 999
    execute if score @s LUK matches 999.. run scoreboard players set @s LUK 999

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
    execute unless score @s PreviousAGI = @s AGI run function player:status/agi/movement_speed/_
    execute unless score @s PreviousLUK = @s LUK run function player:status/luk/generic_luck/_

# ⓼ステータス更新時HPMPをMAXにするか
    execute if entity @s[tag=HPFull] run scoreboard players operation @s HP = @s HPMax
    execute if entity @s[tag=MPFull] run scoreboard players operation @s MP = @s MPMax

# リセット
    data remove storage player: ItemData
    data remove storage player: BonusStatus
    tag @s remove StatusUpdate
    tag @s remove HPFull
    tag @s remove MPFull