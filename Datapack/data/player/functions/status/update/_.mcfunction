##########
#>
#

# 最終的なステータス = baseステータス
    scoreboard players operation @s hp_max = @s BaseHP
    scoreboard players operation @s mp_max = @s BaseMP
    scoreboard players operation @s hp_regen = @s BaseHPRegen
    scoreboard players operation @s mp_regen = @s BaseMPRegen
    scoreboard players operation @s ad = @s BaseAD
    scoreboard players operation @s ap = @s BaseAP
    scoreboard players operation @s dex = @s BaseDEX
    scoreboard players operation @s def = @s BaseDEF
    scoreboard players operation @s spd = @s BaseSPD
    scoreboard players operation @s crt = @s BaseCRT
    scoreboard players operation @s luk = @s BaseLUK
# 補正ステータスリセット
    scoreboard players set @s BonusHP 0
    scoreboard players set @s BonusMP 0
    scoreboard players set @s BonusHPRegen 0
    scoreboard players set @s BonusMPRegen 0
    scoreboard players set @s BonusAD 0
    scoreboard players set @s BonusAP 0
    scoreboard players set @s BonusDEX 0
    scoreboard players set @s BonusDEF 0
    scoreboard players set @s BonusSPD 0
    scoreboard players set @s BonusCRT 0
    scoreboard players set @s BonusLUK 0
# 武器の補正ステータス
    data modify storage player:temp Inventory set from entity @s Inventory
    data modify storage player:temp SelectedItem set from entity @s SelectedItem
    execute if data storage player:temp SelectedItem.tag.weapon run function player:status/update/mainhand
    execute if data storage player:temp Inventory[{Slot:-106b}].tag{weapon:"bow"} unless data storage player:temp SelectedItem.tag{weapon:"bow"} run function player:status/update/offhand
# 職業の補正ステータス
    function player:class/bonus/_
# 装備品の補正ステータス
    execute if data storage player:temp Inventory[{Slot:-106b}].tag.offhand run function player:status/update/offhand
    execute if data storage player:temp Inventory.[{Slot:103b}].tag{equipment:"helmet"} run function player:status/update/helmet
    execute if data storage player:temp Inventory.[{Slot:102b}].tag{equipment:"chestplate"} run function player:status/update/chestplate
    execute if data storage player:temp Inventory.[{Slot:101b}].tag{equipment:"leggings"} run function player:status/update/leggings
    execute if data storage player:temp Inventory.[{Slot:100b}].tag{equipment:"boots"} run function player:status/update/boots
    execute if data storage player:temp Inventory[{Slot:9b}].tag{equipment:"accessory"} run function player:status/update/accessory9
    execute if data storage player:temp Inventory[{Slot:10b}].tag{equipment:"accessory"} run function player:status/update/accessory10
    execute if data storage player:temp Inventory[{Slot:11b}].tag{equipment:"accessory"} run function player:status/update/accessory11
# 最終的なステータス += 補正ステータス
    scoreboard players operation @s hp_max += @s BonusHP
    scoreboard players operation @s mp_max += @s BonusMP
    scoreboard players operation @s hp_regen += @s BonusHPRegen
    scoreboard players operation @s mp_regen += @s BonusMPRegen
    scoreboard players operation @s ad += @s BonusAD
    scoreboard players operation @s ap += @s BonusAP
    scoreboard players operation @s dex += @s BonusDEX
    scoreboard players operation @s def += @s BonusDEF
    scoreboard players operation @s spd += @s BonusSPD
    scoreboard players operation @s crt += @s BonusCRT
    scoreboard players operation @s luk += @s BonusLUK
# 最大値を超えた場合の調整
    function player:status/max
# バフ、最大値を超えるように
   scoreboard players operation @s hp_max += @s BuffHP
   scoreboard players operation @s mp_max += @s BuffMP
   scoreboard players operation @s hp_regen += @s BuffHPRegen
   scoreboard players operation @s mp_regen += @s BuffMPRegen
   scoreboard players operation @s ad += @s BuffAD
   scoreboard players operation @s ap += @s BuffAP
   scoreboard players operation @s dex += @s BuffDEX
   scoreboard players operation @s def += @s BuffDEF
   scoreboard players operation @s spd += @s BuffSPD
   scoreboard players operation @s crt += @s BuffCRT
   scoreboard players operation @s luk += @s BuffLUK
# 最小値を下回った場合の調整
    function player:status/min
# attribute操作
    execute unless score @s PreviousSPD = @s spd run function player:status/spd/apply
# scoreboard objectives add status dummy
    # scoreboard players operation HP status = @s hp_max
    # scoreboard players operation MP status = @s mp_max
    # scoreboard players operation HP_regen status = @s hp_regen
    # scoreboard players operation MP_regen status = @s mp_regen
    # scoreboard players operation AD status = @s ad
    # scoreboard players operation AP status = @s ap
    # scoreboard players operation DEX status = @s dex
    # scoreboard players operation SPD status = @s spd
    # scoreboard players operation preSPD status = @s PreviousSPD
    # scoreboard players operation bufSPD status = @s BuffSPD
    # scoreboard players operation DEX status = @s dex
    # scoreboard players operation 物理攻撃力 status = @s ad
    # scoreboard players operation 素早さ status = @s spd
    # scoreboard players operation 会心 status = @s crt
    # scoreboard players operation 幸運 status = @s luk
    # scoreboard players operation 防御 status = @s def
    # scoreboard players operation ClassAD status = @s ClassAD
    # scoreboard players operation ClassDEF status = @s ClassDEF
    # scoreboard players operation hp_ratio status = @s hp_ratio
    # scoreboard players operation PRVHPRatio status = @s PreviousHPRatio
# リセット
    data remove storage player:temp Inventory
    data remove storage player:temp SelectedItem