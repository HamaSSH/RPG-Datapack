#> player:item_data/enchant/feather_falling
# 落下ダメージを軽減する

# 落下ダメージ軽減
    scoreboard players add @s FallDamageRes 250

# リセット
    data remove storage player: Enchant[{id:"feather_falling"}]