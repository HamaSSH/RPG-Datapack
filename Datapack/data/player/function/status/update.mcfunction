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
    # 特殊ステータス
        scoreboard players set @s CDReduction 0
        scoreboard players set @s KnockBackRes 0
        scoreboard players set @s FallDamageRes 0
        scoreboard players set @s AttackSpeed 0
        scoreboard players set @s GrimReset 0
        scoreboard players set @s ElementFocus 0
        scoreboard players set @s MaxArrowLC 0
        scoreboard players set @s PierceLevel 1
        scoreboard players set @s Multishot 0
        scoreboard players set @s HPDrain 0
        scoreboard players set @s MPDrain 0
        scoreboard players set @s ElementRank 0
        scoreboard players set @s MaxOxygen 100
        scoreboard players set @s GoldMultiplier 100
        scoreboard players set @s MaxShield 0

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
        execute if data storage player: BonusStatus[] run function player:item_data/bonus_status with storage player: BonusStatus[0]
    # 全ての装備分の補正ステータスをスコアに加算
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

# ⓷エンチャント
    data modify storage player: Enchant append from storage player: Weapon.Mainhand.components.minecraft:custom_data.custom_enchant
    data modify storage player: Enchant append from storage player: Weapon.Offhand.components.minecraft:custom_data.custom_enchant
    data modify storage player: Enchant append from storage player: Equipment.Helmet.components.minecraft:custom_data.custom_enchant
    data modify storage player: Enchant append from storage player: Equipment.Chestplate.components.minecraft:custom_data.custom_enchant
    data modify storage player: Enchant append from storage player: Equipment.Leggings.components.minecraft:custom_data.custom_enchant
    data modify storage player: Enchant append from storage player: Equipment.Boots.components.minecraft:custom_data.custom_enchant
    data modify storage player: Enchant append from storage player: Equipment.Accessories[{Slot:9b}].components.minecraft:custom_data.custom_enchant
    data modify storage player: Enchant append from storage player: Equipment.Accessories[{Slot:10b}].components.minecraft:custom_data.custom_enchant
    data modify storage player: Enchant append from storage player: Equipment.Accessories[{Slot:11b}].components.minecraft:custom_data.custom_enchant
    function player:item_data/enchant/reset
    execute if data storage player: Enchant[] run function player:item_data/enchant/_ with storage player: Enchant[0]

# ⓸職業のパッシブスキルによる補正ステータス
    execute if predicate player:class/is_hunter run function player:class/hunter/passive/update
    execute if predicate player:class/is_fighter run function player:class/fighter/passive/update
    execute if predicate player:class/is_paladin run function player:class/paladin/passive/update
    execute if predicate player:class/is_wizard run function player:class/wizard/passive/update

# ⓹バフによる補正
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

# ⓺最大値を超えないよう調整
    execute if score @s HP >= @s HPMax run scoreboard players operation @s HP = @s HPMax
    execute if score @s MP >= @s MPMax run scoreboard players operation @s MP = @s MPMax
    execute if score @s HPMax matches 100000.. run function player:status/hp/max
    execute if score @s MPMax matches 100000.. run function player:status/mp/max
    execute if score @s DEF matches 999.. run function player:status/def/max
    execute if score @s AGI matches 999.. run function player:status/agi/max
    execute if score @s CRT matches 999.. run function player:status/crt/max
    execute if score @s LUK matches 999.. run function player:status/luk/max
    # 特殊ステータス
        execute if score @s CDReduction matches 1000.. run scoreboard players set @s CDReduction 1000
        execute if score @s KnockBackRes matches 1000.. run scoreboard players set @s KnockBackRes 1000
        execute if score @s FallDamageRes matches 1000.. run scoreboard players set @s FallDamageRes 1000
        execute if score @s AttackSpeed matches 1000.. run scoreboard players set @s AttackSpeed 1000
        execute if score @s GrimReset matches 100.. run scoreboard players set @s GrimReset 100
        execute if score @s MaxArrowLC matches 3.. run scoreboard players set @s MaxArrowLC 3
        execute if score @s Multishot matches 2.. run scoreboard players set @s Multishot 2
        execute if score @s ElementRank matches 3.. run scoreboard players set @s ElementRank 3
        execute if score @s MaxShield matches 3.. run scoreboard players set @s MaxShield 3

# ⓻最小値を下回らないよう調整
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

# ⓼attributeの設定
    execute unless score @s PreviousAGI = @s AGI run function player:status/agi/_
    execute unless score @s PreviousLUK = @s LUK run function player:status/luk/generic_luck/_
    execute unless score @s PreviousKBR = @s KnockBackRes run function player:status/passive/knockback_resistance/_
    execute unless score @s PreviousAS = @s AttackSpeed run function player:status/passive/attack_speed/_

# ⓽ステータス更新時HPMPをMAXにするか
    execute if entity @s[tag=HPFull] run scoreboard players operation @s HP = @s HPMax
    execute if entity @s[tag=MPFull] run scoreboard players operation @s MP = @s MPMax

# ⓾プレイヤーメニューの更新
    execute if entity @s[tag=MenuStatus] run tag @s add MenuStatusUpdate
    # execute if entity @s[tag=MenuPassive] run function player:menu/clicked/3/update_passive

# リセット
    data remove storage player: ItemData
    data remove storage player: BonusStatus
    data remove storage player: Enchant
    tag @s remove StatusUpdate
    tag @s remove HPFull
    tag @s remove MPFull