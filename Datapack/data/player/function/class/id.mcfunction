#> player:class/id
# ClassID(職業種→スコアに変換)

execute if predicate player:class/is_hunter run scoreboard players set $ClassID Temporary 10
execute if predicate player:class/is_fighter run scoreboard players set $ClassID Temporary 20
execute if predicate player:class/is_paladin run scoreboard players set $ClassID Temporary 30
execute if predicate player:class/is_wizard run scoreboard players set $ClassID Temporary 40