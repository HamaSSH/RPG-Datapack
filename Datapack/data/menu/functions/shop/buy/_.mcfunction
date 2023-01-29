# 買えなかった
    execute unless score @p gold >= $BuyPrice Temporary run playsound minecraft:entity.villager.no master @p ~ ~ ~ 1 1.1
# 買えた
    scoreboard players set $ButtonClicked Temporary 1
    execute if score @p gold >= $BuyPrice Temporary run function menu:shop/buy/give_item
# ホームページ(0)へ戻る
    scoreboard players set @s page 10