# アイテムを与える
    data modify storage menu:temp Data.id set from entity @s data.id
    function #npc:buy
# 金を払う
    scoreboard players operation @p gold -= $BuyPrice Temporary
# 演出
    playsound minecraft:entity.villager.yes master @p ~ ~ ~ 1 1.1
    playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 0.25 1.5