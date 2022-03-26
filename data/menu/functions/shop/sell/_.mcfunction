# お金足す
    scoreboard players operation @p gold += $TotalSellPrice Temporary
# 演出
    scoreboard players set $ButtonClicked Temporary 1
    execute unless score $TotalSellPrice Temporary matches 1.. run playsound minecraft:entity.villager.no master @p ~ ~ ~ 1 1.1
    execute if score $TotalSellPrice Temporary matches 1.. run playsound minecraft:entity.villager.yes master @p ~ ~ ~ 1 1.1
    execute if score $TotalSellPrice Temporary matches 1.. run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 0.25 1.5
# ホームページ(0)に戻る
    scoreboard players set @s page 10