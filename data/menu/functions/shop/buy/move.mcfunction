# ページスコアを設定
    scoreboard players set @s page 12
# 買うアイテムをstorageへ
    execute if score $SlotClicked Temporary matches 10 run data modify entity @s data.buy set from storage menu:temp Data.Goods[{Slot:10b}]
    execute if score $SlotClicked Temporary matches 11 run data modify entity @s data.buy set from storage menu:temp Data.Goods[{Slot:11b}]
    execute if score $SlotClicked Temporary matches 12 run data modify entity @s data.buy set from storage menu:temp Data.Goods[{Slot:12b}]
    execute if score $SlotClicked Temporary matches 13 run data modify entity @s data.buy set from storage menu:temp Data.Goods[{Slot:13b}]
    execute if score $SlotClicked Temporary matches 14 run data modify entity @s data.buy set from storage menu:temp Data.Goods[{Slot:14b}]
    execute if score $SlotClicked Temporary matches 15 run data modify entity @s data.buy set from storage menu:temp Data.Goods[{Slot:15b}]
# 演出
    scoreboard players set $ButtonClicked Temporary 1
    playsound minecraft:entity.villager.ambient master @p ~ ~ ~ 1 1