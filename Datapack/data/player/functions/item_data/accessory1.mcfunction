#> player:item_data/accessory1
# アイテムの補正ステータス取得

# 補正ステータスの加算
    execute store result score $Bonus Temporary run data get storage player: ItemData.Accessory1.tag.Bonus.HP
    scoreboard players operation @s BonusHP += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Accessory1.tag.Bonus.MP
    scoreboard players operation @s BonusMP += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Accessory1.tag.Bonus.HPR
    scoreboard players operation @s BonusHPR += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Accessory1.tag.Bonus.MPR
    scoreboard players operation @s BonusMPR += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Accessory1.tag.Bonus.STR
    scoreboard players operation @s BonusSTR += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Accessory1.tag.Bonus.INT
    scoreboard players operation @s BonusINT += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Accessory1.tag.Bonus.DEX
    scoreboard players operation @s BonusDEX += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Accessory1.tag.Bonus.DEF
    scoreboard players operation @s BonusDEF += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Accessory1.tag.Bonus.AGI
    scoreboard players operation @s BonusAGI += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Accessory1.tag.Bonus.CRT
    scoreboard players operation @s BonusCRT += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Accessory1.tag.Bonus.LUK
    scoreboard players operation @s BonusLUK += $Bonus Temporary

# リセット
    scoreboard players reset $Bonus Temporary