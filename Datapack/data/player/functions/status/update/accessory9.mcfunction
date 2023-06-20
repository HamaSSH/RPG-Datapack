##########
#>
#

# storage accessoryにInventory[{Slot:9b}].tag.bonusを代入
    data modify storage player:temp accessory set from storage player:temp Inventory[{Slot:9b}].tag.bonus
# accessoryスロットにステータス加算アイテムがあれば加算
    execute if data storage player:temp accessory.hp store result score $Bonus Temporary run data get storage player:temp accessory.hp
    execute if data storage player:temp accessory.hp run scoreboard players operation @s BonusHP += $Bonus Temporary
    execute if data storage player:temp accessory.mp store result score $Bonus Temporary run data get storage player:temp accessory.mp
    execute if data storage player:temp accessory.mp run scoreboard players operation @s BonusMP += $Bonus Temporary
    execute if data storage player:temp accessory.hp_regen store result score $Bonus Temporary run data get storage player:temp accessory.hp_regen
    execute if data storage player:temp accessory.hp_regen run scoreboard players operation @s BonusHPRegen += $Bonus Temporary
    execute if data storage player:temp accessory.mp_regen store result score $Bonus Temporary run data get storage player:temp accessory.mp_regen
    execute if data storage player:temp accessory.mp_regen run scoreboard players operation @s BonusMPRegen += $Bonus Temporary
    execute if data storage player:temp accessory.ad store result score $Bonus Temporary run data get storage player:temp accessory.ad
    execute if data storage player:temp accessory.ad run scoreboard players operation @s BonusAD += $Bonus Temporary
    execute if data storage player:temp accessory.ap store result score $Bonus Temporary run data get storage player:temp accessory.ap
    execute if data storage player:temp accessory.ap run scoreboard players operation @s BonusAP += $Bonus Temporary
    execute if data storage player:temp accessory.dex store result score $Bonus Temporary run data get storage player:temp accessory.dex
    execute if data storage player:temp accessory.dex run scoreboard players operation @s BonusDEX += $Bonus Temporary
    execute if data storage player:temp accessory.def store result score $Bonus Temporary run data get storage player:temp accessory.def
    execute if data storage player:temp accessory.def run scoreboard players operation @s BonusDEF += $Bonus Temporary
    execute if data storage player:temp accessory.spd store result score $Bonus Temporary run data get storage player:temp accessory.spd
    execute if data storage player:temp accessory.spd run scoreboard players operation @s BonusSPD += $Bonus Temporary
    execute if data storage player:temp accessory.crt store result score $Bonus Temporary run data get storage player:temp accessory.crt
    execute if data storage player:temp accessory.crt run scoreboard players operation @s BonusCRT += $Bonus Temporary
    execute if data storage player:temp accessory.luk store result score $Bonus Temporary run data get storage player:temp accessory.luk
    execute if data storage player:temp accessory.luk run scoreboard players operation @s BonusLUK += $Bonus Temporary
# リセット
    data remove storage player:temp accessory
    scoreboard players reset $Bonus