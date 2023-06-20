##########
#>
#

# Inventory[{Slot:-106b}]が無ければmainhandをairに(ゴーストブロック未解決)
    data modify storage menu:temp offhand set from entity @s Inventory
    # execute unless data storage menu:temp offhand[{Slot:-106b,tag:{menu:{blank:1b}}}] run item replace entity @s weapon.offhand with air
# リセット
    data remove storage menu:temp offhand