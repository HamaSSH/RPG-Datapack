# アイテムの返却
    execute if data storage menu:temp Data.return[] run function menu:return_item/rec
# 演出
    execute if entity @s[type=player] run playsound entity.item.pickup master @p ~ ~ ~ 1.0 1.5