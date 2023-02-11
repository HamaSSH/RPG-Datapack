##########
#>
#

# storage mainhandにSelectedItem.tag.bonusを代入
    data modify storage player:temp mainhand set from storage player:temp SelectedItem.tag.bonus
# mainhandにステータス加算アイテムがあれば加算
    execute if data storage player:temp mainhand.hp store result score $Bonus Temporary run data get storage player:temp mainhand.hp
    execute if data storage player:temp mainhand.hp run scoreboard players operation @s BonusHP += $Bonus Temporary
    execute if data storage player:temp mainhand.mp store result score $Bonus Temporary run data get storage player:temp mainhand.mp
    execute if data storage player:temp mainhand.mp run scoreboard players operation @s BonusMP += $Bonus Temporary
    execute if data storage player:temp mainhand.hp_regen store result score $Bonus Temporary run data get storage player:temp mainhand.hp_regen
    execute if data storage player:temp mainhand.hp_regen run scoreboard players operation @s BonusHPRegen += $Bonus Temporary
    execute if data storage player:temp mainhand.mp_regen store result score $Bonus Temporary run data get storage player:temp mainhand.mp_regen
    execute if data storage player:temp mainhand.mp_regen run scoreboard players operation @s BonusMPRegen += $Bonus Temporary
    execute if data storage player:temp mainhand.ad store result score $Bonus Temporary run data get storage player:temp mainhand.ad
    execute if data storage player:temp mainhand.ad run scoreboard players operation @s BonusAD += $Bonus Temporary
    execute if data storage player:temp mainhand.ap store result score $Bonus Temporary run data get storage player:temp mainhand.ap
    execute if data storage player:temp mainhand.ap run scoreboard players operation @s BonusAP += $Bonus Temporary
    execute if data storage player:temp mainhand.dex store result score $Bonus Temporary run data get storage player:temp mainhand.dex
    execute if data storage player:temp mainhand.dex run scoreboard players operation @s BonusDEX += $Bonus Temporary
    execute if data storage player:temp mainhand.def store result score $Bonus Temporary run data get storage player:temp mainhand.def
    execute if data storage player:temp mainhand.def run scoreboard players operation @s BonusDEF += $Bonus Temporary
    execute if data storage player:temp mainhand.spd store result score $Bonus Temporary run data get storage player:temp mainhand.spd
    execute if data storage player:temp mainhand.spd run scoreboard players operation @s BonusSPD += $Bonus Temporary
    execute if data storage player:temp mainhand.crt store result score $Bonus Temporary run data get storage player:temp mainhand.crt
    execute if data storage player:temp mainhand.crt run scoreboard players operation @s BonusCRT += $Bonus Temporary
    execute if data storage player:temp mainhand.luk store result score $Bonus Temporary run data get storage player:temp mainhand.luk
    execute if data storage player:temp mainhand.luk run scoreboard players operation @s BonusLUK += $Bonus Temporary
# リセット
    data remove storage player:temp mainhand
    scoreboard players reset $Bonus