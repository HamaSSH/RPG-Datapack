##########
#>
#

# storage helmetにInventory[{Slot:103b}].tag.bonusを代入
    data modify storage player:temp helmet set from storage player:temp Inventory[{Slot:103b}].tag.bonus
# helmetスロットにステータス加算アイテムがあれば加算
    execute if data storage player:temp helmet.hp store result score $Bonus Temporary run data get storage player:temp helmet.hp
    execute if data storage player:temp helmet.hp run scoreboard players operation @s BonusHP += $Bonus Temporary
    execute if data storage player:temp helmet.mp store result score $Bonus Temporary run data get storage player:temp helmet.mp
    execute if data storage player:temp helmet.mp run scoreboard players operation @s BonusMP += $Bonus Temporary
    execute if data storage player:temp helmet.hp_regen store result score $Bonus Temporary run data get storage player:temp helmet.hp_regen
    execute if data storage player:temp helmet.hp_regen run scoreboard players operation @s BonusHPRegen += $Bonus Temporary
    execute if data storage player:temp helmet.mp_regen store result score $Bonus Temporary run data get storage player:temp helmet.mp_regen
    execute if data storage player:temp helmet.mp_regen run scoreboard players operation @s BonusMPRegen += $Bonus Temporary
    execute if data storage player:temp helmet.ad store result score $Bonus Temporary run data get storage player:temp helmet.ad
    execute if data storage player:temp helmet.ad run scoreboard players operation @s BonusAD += $Bonus Temporary
    execute if data storage player:temp helmet.ap store result score $Bonus Temporary run data get storage player:temp helmet.ap
    execute if data storage player:temp helmet.ap run scoreboard players operation @s BonusAP += $Bonus Temporary
    execute if data storage player:temp helmet.dex store result score $Bonus Temporary run data get storage player:temp helmet.dex
    execute if data storage player:temp helmet.dex run scoreboard players operation @s BonusDEX += $Bonus Temporary
    execute if data storage player:temp helmet.def store result score $Bonus Temporary run data get storage player:temp helmet.def
    execute if data storage player:temp helmet.def run scoreboard players operation @s BonusDEF += $Bonus Temporary
    execute if data storage player:temp helmet.spd store result score $Bonus Temporary run data get storage player:temp helmet.spd
    execute if data storage player:temp helmet.spd run scoreboard players operation @s BonusSPD += $Bonus Temporary
    execute if data storage player:temp helmet.crt store result score $Bonus Temporary run data get storage player:temp helmet.crt
    execute if data storage player:temp helmet.crt run scoreboard players operation @s BonusCRT += $Bonus Temporary
    execute if data storage player:temp helmet.luk store result score $Bonus Temporary run data get storage player:temp helmet.luk
    execute if data storage player:temp helmet.luk run scoreboard players operation @s BonusLUK += $Bonus Temporary
# リセット
    data remove storage player:temp helmet
    scoreboard players reset $Bonus