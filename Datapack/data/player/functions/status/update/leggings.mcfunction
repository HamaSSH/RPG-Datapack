##########
#>
#

# storage leggingsにInventory[{Slot:101b}].tag.bonusを代入
    data modify storage player:temp leggings set from storage player:temp Inventory[{Slot:101b}].tag.bonus
# leggingsスロットにステータス加算アイテムがあれば加算
    execute if data storage player:temp leggings.hp store result score $Bonus Temporary run data get storage player:temp leggings.hp
    execute if data storage player:temp leggings.hp run scoreboard players operation @s BonusHP += $Bonus Temporary
    execute if data storage player:temp leggings.mp store result score $Bonus Temporary run data get storage player:temp leggings.mp
    execute if data storage player:temp leggings.mp run scoreboard players operation @s BonusMP += $Bonus Temporary
    execute if data storage player:temp leggings.hp_regen store result score $Bonus Temporary run data get storage player:temp leggings.hp_regen
    execute if data storage player:temp leggings.hp_regen run scoreboard players operation @s BonusHPRegen += $Bonus Temporary
    execute if data storage player:temp leggings.mp_regen store result score $Bonus Temporary run data get storage player:temp leggings.mp_regen
    execute if data storage player:temp leggings.mp_regen run scoreboard players operation @s BonusMPRegen += $Bonus Temporary
    execute if data storage player:temp leggings.ad store result score $Bonus Temporary run data get storage player:temp leggings.ad
    execute if data storage player:temp leggings.ad run scoreboard players operation @s BonusAD += $Bonus Temporary
    execute if data storage player:temp leggings.ap store result score $Bonus Temporary run data get storage player:temp leggings.ap
    execute if data storage player:temp leggings.ap run scoreboard players operation @s BonusAP += $Bonus Temporary
    execute if data storage player:temp leggings.dex store result score $Bonus Temporary run data get storage player:temp leggings.dex
    execute if data storage player:temp leggings.dex run scoreboard players operation @s BonusDEX += $Bonus Temporary
    execute if data storage player:temp leggings.def store result score $Bonus Temporary run data get storage player:temp leggings.def
    execute if data storage player:temp leggings.def run scoreboard players operation @s BonusDEF += $Bonus Temporary
    execute if data storage player:temp leggings.spd store result score $Bonus Temporary run data get storage player:temp leggings.spd
    execute if data storage player:temp leggings.spd run scoreboard players operation @s BonusSPD += $Bonus Temporary
    execute if data storage player:temp leggings.crt store result score $Bonus Temporary run data get storage player:temp leggings.crt
    execute if data storage player:temp leggings.crt run scoreboard players operation @s BonusCRT += $Bonus Temporary
    execute if data storage player:temp leggings.luk store result score $Bonus Temporary run data get storage player:temp leggings.luk
    execute if data storage player:temp leggings.luk run scoreboard players operation @s BonusLUK += $Bonus Temporary
# リセット
    data remove storage player:temp leggings
    scoreboard players reset $Bonus