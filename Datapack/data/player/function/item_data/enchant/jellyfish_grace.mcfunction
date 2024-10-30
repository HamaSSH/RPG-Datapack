#> player:item_data/enchant/abyss_blessing
# 潜水能力を大幅に強化する

# 最大酸素 +7.5秒
    scoreboard players add @s MaxOxygen 150

# 水中での高速移動
    attribute @s water_movement_efficiency modifier add jellyfish_grace 1.0 add_value
    attribute @s submerged_mining_speed modifier add jellyfish_grace 0.4 add_value

# リセット
    data remove storage player: Enchant[{id:"jellyfish_grace"}]