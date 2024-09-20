#> player:item_data/enchant/gold_multiplier
# ゴールドのドロップ量ＵＰ

# ドロップ増加
    scoreboard players add @s GoldMultiplier 25

# リセット
    data remove storage player: Enchant[{id:gold_multiplier}]