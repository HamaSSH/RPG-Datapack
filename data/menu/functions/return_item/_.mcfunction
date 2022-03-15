# アイテムの返却
    execute store result score $NumOfItems Temporary run data get storage menu:temp Data.return
    function menu:return_item/rec
# 演出
    execute if entity @s[type=player] run playsound entity.item.pickup master @p ~ ~ ~ 1.0 1.5