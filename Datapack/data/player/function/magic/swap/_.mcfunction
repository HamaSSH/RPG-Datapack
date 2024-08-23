#> player:magic/swap/_
# 魔導書切り替え

data modify storage player:magic hotbar set value [{Slot:-1},{Slot:-1},{Slot:-1},{Slot:-1},{Slot:-1},{Slot:-1},{Slot:-1},{Slot:-1},{Slot:-1}]
data modify storage player:magic hotbar[0].Slot set from storage player: Inventory[{Slot:0b,components:{"minecraft:custom_data":{magic:{}}}}].Slot
data modify storage player:magic hotbar[1].Slot set from storage player: Inventory[{Slot:1b,components:{"minecraft:custom_data":{magic:{}}}}].Slot
data modify storage player:magic hotbar[2].Slot set from storage player: Inventory[{Slot:2b,components:{"minecraft:custom_data":{magic:{}}}}].Slot
data modify storage player:magic hotbar[3].Slot set from storage player: Inventory[{Slot:3b,components:{"minecraft:custom_data":{magic:{}}}}].Slot
data modify storage player:magic hotbar[4].Slot set from storage player: Inventory[{Slot:4b,components:{"minecraft:custom_data":{magic:{}}}}].Slot
data modify storage player:magic hotbar[5].Slot set from storage player: Inventory[{Slot:5b,components:{"minecraft:custom_data":{magic:{}}}}].Slot
data modify storage player:magic hotbar[6].Slot set from storage player: Inventory[{Slot:6b,components:{"minecraft:custom_data":{magic:{}}}}].Slot
data modify storage player:magic hotbar[7].Slot set from storage player: Inventory[{Slot:7b,components:{"minecraft:custom_data":{magic:{}}}}].Slot
data modify storage player:magic hotbar[8].Slot set from storage player: Inventory[{Slot:8b,components:{"minecraft:custom_data":{magic:{}}}}].Slot
data remove storage player:magic hotbar[{Slot:-1}]

# 武器の保存
    item replace block 0 0 0 container.0 from entity @s weapon.offhand

# 次の魔導書をセット
    execute store result storage player:magic selected.Slot byte 1 run scoreboard players get @s PreviousSlot
    execute if data storage player:magic hotbar[1] run function player:magic/swap/remove with storage player:magic selected
    function player:magic/swap/offhand with storage player:magic hotbar[0]

# ホットバーの魔導書の順番を整頓
    data modify storage player:magic swap.Slot1 set from storage player:magic hotbar[0].Slot
    data modify storage player:magic swap.Slot2 set from storage player:magic hotbar[1].Slot
    execute if data storage player:magic hotbar[1] run function player:magic/swap/move with storage player:magic swap

# 武器を戻す
    item replace entity @s weapon.mainhand from block 0 0 0 container.0

# 効果音
    playsound minecraft:block.chiseled_bookshelf.pickup master @s ~ ~ ~ 0.5 1.2
    playsound resource:item.book.open_flip2 master @s ~ ~ ~ 0.5 1.3

# リセット
    data remove storage player:magic hotbar
    data remove storage player:magic selected
    data remove storage player:magic swap