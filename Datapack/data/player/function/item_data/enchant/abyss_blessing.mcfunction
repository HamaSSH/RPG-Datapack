#> player:item_data/enchant/abyss_blessing
# 与ダメージからＨＰを回復

# ＨＰ吸収
    scoreboard players add @s HPDrain 13

# リセット
    data remove storage player: Enchant[{id:"abyss_blessing"}]