##########
#>
#

# storage bootsにInventory[{Slot:100b}].tag.bonusを代入
    data modify storage player:temp boots set from storage player:temp Inventory[{Slot:100b}].tag.bonus
# bootsスロットにステータス加算アイテムがあれば加算
    execute if data storage player:temp boots.hp store result score $Bonus Temporary run data get storage player:temp boots.hp
    execute if data storage player:temp boots.hp run scoreboard players operation @s BonusHP += $Bonus Temporary
    execute if data storage player:temp boots.mp store result score $Bonus Temporary run data get storage player:temp boots.mp
    execute if data storage player:temp boots.mp run scoreboard players operation @s BonusMP += $Bonus Temporary
    execute if data storage player:temp boots.hp_regen store result score $Bonus Temporary run data get storage player:temp boots.hp_regen
    execute if data storage player:temp boots.hp_regen run scoreboard players operation @s BonusHPRegen += $Bonus Temporary
    execute if data storage player:temp boots.mp_regen store result score $Bonus Temporary run data get storage player:temp boots.mp_regen
    execute if data storage player:temp boots.mp_regen run scoreboard players operation @s BonusMPRegen += $Bonus Temporary
    execute if data storage player:temp boots.ad store result score $Bonus Temporary run data get storage player:temp boots.ad
    execute if data storage player:temp boots.ad run scoreboard players operation @s BonusAD += $Bonus Temporary
    execute if data storage player:temp boots.ap store result score $Bonus Temporary run data get storage player:temp boots.ap
    execute if data storage player:temp boots.ap run scoreboard players operation @s BonusAP += $Bonus Temporary
    execute if data storage player:temp boots.dex store result score $Bonus Temporary run data get storage player:temp boots.dex
    execute if data storage player:temp boots.dex run scoreboard players operation @s BonusDEX += $Bonus Temporary
    execute if data storage player:temp boots.def store result score $Bonus Temporary run data get storage player:temp boots.def
    execute if data storage player:temp boots.def run scoreboard players operation @s BonusDEF += $Bonus Temporary
    execute if data storage player:temp boots.spd store result score $Bonus Temporary run data get storage player:temp boots.spd
    execute if data storage player:temp boots.spd run scoreboard players operation @s BonusSPD += $Bonus Temporary
    execute if data storage player:temp boots.crt store result score $Bonus Temporary run data get storage player:temp boots.crt
    execute if data storage player:temp boots.crt run scoreboard players operation @s BonusCRT += $Bonus Temporary
    execute if data storage player:temp boots.luk store result score $Bonus Temporary run data get storage player:temp boots.luk
    execute if data storage player:temp boots.luk run scoreboard players operation @s BonusLUK += $Bonus Temporary
# リセット
    data remove storage player:temp boots
    scoreboard players reset $Bonus