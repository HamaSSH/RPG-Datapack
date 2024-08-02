#> player:class/id
# ClassID(職業種→スコアに変換)

execute if predicate player:class/is_hunter run scoreboard players set $ClassID Temporary 10
execute if predicate player:class/is_fighter run scoreboard players set $ClassID Temporary 20
execute if predicate player:class/is_paladin run scoreboard players set $ClassID Temporary 30
execute if predicate player:class/is_wizard run scoreboard players set $ClassID Temporary 40

scoreboard players set $HunterCMD Temporary 1011
scoreboard players set $FighterCMD Temporary 1012
scoreboard players set $PaladinCMD Temporary 1013
scoreboard players set $WizardCMD Temporary 1014
execute if score @s HunterRank matches 1 run scoreboard players set $HunterCMD Temporary 1021
execute if score @s HunterRank matches 2 run scoreboard players set $HunterCMD Temporary 1031
execute if score @s FighterRank matches 1 run scoreboard players set $FighterCMD Temporary 1022
execute if score @s FighterRank matches 2 run scoreboard players set $FighterCMD Temporary 1032
execute if score @s PaladinRank matches 1 run scoreboard players set $PaladinCMD Temporary 1023
execute if score @s PaladinRank matches 2 run scoreboard players set $PaladinCMD Temporary 1033
execute if score @s WizardRank matches 1 run scoreboard players set $WizardCMD Temporary 1024
execute if score @s WizardRank matches 2 run scoreboard players set $WizardCMD Temporary 1034