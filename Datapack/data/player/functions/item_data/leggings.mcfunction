#> player:item_data/leggings
# アイテムの補正ステータス取得

# 補正ステータスの加算
    execute store result score $Bonus Temporary run data get storage player: ItemData.Leggings.tag.Bonus.HP
    scoreboard players operation @s BonusHPMax += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Leggings.tag.Bonus.MP
    scoreboard players operation @s BonusMPMax += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Leggings.tag.Bonus.HPR
    scoreboard players operation @s BonusHPR += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Leggings.tag.Bonus.MPR
    scoreboard players operation @s BonusMPR += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Leggings.tag.Bonus.STR
    scoreboard players operation @s BonusSTR += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Leggings.tag.Bonus.INT
    scoreboard players operation @s BonusINT += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Leggings.tag.Bonus.DEX
    scoreboard players operation @s BonusDEX += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Leggings.tag.Bonus.DEF
    scoreboard players operation @s BonusDEF += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Leggings.tag.Bonus.AGI
    scoreboard players operation @s BonusAGI += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Leggings.tag.Bonus.CRT
    scoreboard players operation @s BonusCRT += $Bonus Temporary
    execute store result score $Bonus Temporary run data get storage player: ItemData.Leggings.tag.Bonus.LUK
    scoreboard players operation @s BonusLUK += $Bonus Temporary

# リセット
    scoreboard players reset $Bonus Temporary