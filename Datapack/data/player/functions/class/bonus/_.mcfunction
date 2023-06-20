##########
#>
#

# 職業のパッシブスキルによるステータス加算
    execute if predicate player:assassin/weapon run function player:class/bonus/ad
    execute if predicate player:fighter/weapon run function player:class/bonus/ad
    execute if predicate player:hunter/weapon run function player:class/bonus/dex
    execute if predicate player:knight/weapon run function player:class/bonus/ad
    execute if predicate player:warrior/weapon run function player:class/bonus/ad
    execute if predicate player:wizard/weapon run function player:class/bonus/ap
# 職業ステータスを加算
    scoreboard players operation @s BonusHPRegen += @s ClassHPRegen
    scoreboard players operation @s BonusMPRegen += @s ClassMPRegen
    scoreboard players operation @s BonusAD += @s ClassAD
    scoreboard players operation @s BonusAP += @s ClassAP
    scoreboard players operation @s BonusDEX += @s ClassDEX
    scoreboard players operation @s BonusDEF += @s ClassDEF
    scoreboard players operation @s BonusSPD += @s ClassSPD
    scoreboard players operation @s BonusCRT += @s ClassCRT
    scoreboard players operation @s BonusLUK += @s ClassLUK