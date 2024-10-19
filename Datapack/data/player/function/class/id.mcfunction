#> player:class/id
# ClassID(職業種→スコアに変換)

execute if predicate player:class/is_hunter run scoreboard players set $ClassID Temporary 10
execute if predicate player:class/is_fighter run scoreboard players set $ClassID Temporary 20
execute if predicate player:class/is_paladin run scoreboard players set $ClassID Temporary 30
execute if predicate player:class/is_wizard run scoreboard players set $ClassID Temporary 40

data modify storage player: class_icon.hunter set value 0
execute if score @s HunterRank matches 1 run data modify storage player: class_icon.hunter set value 1
execute if score @s HunterRank matches 2 run data modify storage player: class_icon.hunter set value 2
data modify storage player: class_icon.fighter set value 0
execute if score @s FighterRank matches 1 run data modify storage player: class_icon.fighter set value 1
execute if score @s FighterRank matches 2 run data modify storage player: class_icon.fighter set value 2
data modify storage player: class_icon.knight set value 0
execute if score @s PaladinRank matches 1 run data modify storage player: class_icon.knight set value 1
execute if score @s PaladinRank matches 2 run data modify storage player: class_icon.knight set value 2
data modify storage player: class_icon.wizard set value 0
execute if score @s WizardRank matches 1 run data modify storage player: class_icon.wizard set value 1
execute if score @s WizardRank matches 2 run data modify storage player: class_icon.wizard set value 2