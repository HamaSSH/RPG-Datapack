#> player:item_data/set_uuid
# アイテムにUUIDを付与

execute store result storage player: ItemUUID int 1 run scoreboard players add World ItemUUID 1
item modify entity @s weapon.mainhand player:item_data/uuid
data remove storage player: ItemUUID