##########
#>
#

# プレイヤーのインベントリ状況に応じてgiveかspawnかを決定
    execute as @p run data modify storage menu:temp Inventory set from entity @s Inventory
    execute store result score $Inventory Temporary run data get storage menu:temp Inventory
    execute if data storage menu:temp Inventory[{Slot:100b}] run scoreboard players remove $Inventory Temporary 1
    execute if data storage menu:temp Inventory[{Slot:101b}] run scoreboard players remove $Inventory Temporary 1
    execute if data storage menu:temp Inventory[{Slot:102b}] run scoreboard players remove $Inventory Temporary 1
    execute if data storage menu:temp Inventory[{Slot:103b}] run scoreboard players remove $Inventory Temporary 1
    execute if data storage menu:temp Inventory[{Slot:-106b}] run scoreboard players remove $Inventory Temporary 1
    execute if score $Inventory Temporary matches ..35 run loot give @p mine 0 0 0 barrier
    execute if score $Inventory Temporary matches 36.. run loot spawn ~ ~ ~ mine 0 0 0 barrier
# リセット
    data remove storage menu:temp Inventory
    scoreboard players reset $Inventory