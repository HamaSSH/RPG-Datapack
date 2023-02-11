##########
#>
#

# storage chestplateにInventory[{Slot:102b}].tag.bonusを代入
    data modify storage player:temp chestplate set from storage player:temp Inventory[{Slot:102b}].tag.bonus
# chestplateスロットにステータス加算アイテムがあれば加算
    execute if data storage player:temp chestplate.hp store result score $Bonus Temporary run data get storage player:temp chestplate.hp
    execute if data storage player:temp chestplate.hp run scoreboard players operation @s BonusHP += $Bonus Temporary
    execute if data storage player:temp chestplate.mp store result score $Bonus Temporary run data get storage player:temp chestplate.mp
    execute if data storage player:temp chestplate.mp run scoreboard players operation @s BonusMP += $Bonus Temporary
    execute if data storage player:temp chestplate.hp_regen store result score $Bonus Temporary run data get storage player:temp chestplate.hp_regen
    execute if data storage player:temp chestplate.hp_regen run scoreboard players operation @s BonusHPRegen += $Bonus Temporary
    execute if data storage player:temp chestplate.mp_regen store result score $Bonus Temporary run data get storage player:temp chestplate.mp_regen
    execute if data storage player:temp chestplate.mp_regen run scoreboard players operation @s BonusMPRegen += $Bonus Temporary
    execute if data storage player:temp chestplate.ad store result score $Bonus Temporary run data get storage player:temp chestplate.ad
    execute if data storage player:temp chestplate.ad run scoreboard players operation @s BonusAD += $Bonus Temporary
    execute if data storage player:temp chestplate.ap store result score $Bonus Temporary run data get storage player:temp chestplate.ap
    execute if data storage player:temp chestplate.ap run scoreboard players operation @s BonusAP += $Bonus Temporary
    execute if data storage player:temp chestplate.dex store result score $Bonus Temporary run data get storage player:temp chestplate.dex
    execute if data storage player:temp chestplate.dex run scoreboard players operation @s BonusDEX += $Bonus Temporary
    execute if data storage player:temp chestplate.def store result score $Bonus Temporary run data get storage player:temp chestplate.def
    execute if data storage player:temp chestplate.def run scoreboard players operation @s BonusDEF += $Bonus Temporary
    execute if data storage player:temp chestplate.spd store result score $Bonus Temporary run data get storage player:temp chestplate.spd
    execute if data storage player:temp chestplate.spd run scoreboard players operation @s BonusSPD += $Bonus Temporary
    execute if data storage player:temp chestplate.crt store result score $Bonus Temporary run data get storage player:temp chestplate.crt
    execute if data storage player:temp chestplate.crt run scoreboard players operation @s BonusCRT += $Bonus Temporary
    execute if data storage player:temp chestplate.luk store result score $Bonus Temporary run data get storage player:temp chestplate.luk
    execute if data storage player:temp chestplate.luk run scoreboard players operation @s BonusLUK += $Bonus Temporary
# リセット
    data remove storage player:temp chestplate
    scoreboard players reset $Bonus