#> item:tick
# アイテム関連の常時実行処理

# 耕地を再生する処理
    execute at @a as @e[type=item,distance=..10] if data entity @s Item.components.minecraft:custom_data{item_type:"farmland"} run function item:material/farmland

# 採集ポイント
    execute at @a as @e[type=armor_stand,tag=Material,distance=..6] at @s run function item:material/collect/tick
    execute as @e[type=armor_stand,tag=Growing] at @s if block ~ ~1 ~ nether_wart[age=3] run function item:material/respawn

# 釣り宝箱
    execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data{item_type:"fishing_chest"} if predicate lib:is_on_ground run function item:fishing/chest/reveal_rarity
    execute as @e[tag=GoldChest] at @s if predicate lib:is_on_ground run function item:fishing/chest/gold/animation
    execute as @e[tag=LootChest] at @s if predicate lib:is_on_ground run function item:fishing/chest/loot/animation

# 釣り関連 #TODO:[いつか] 溶岩上の釣り
    # execute as @e[type=fishing_bobber] if entity @s[tag=!BobberInit] at @s if block ~ ~-0.01 ~ lava run function item:fishing/bobber/init
    # execute as @e[type=fishing_bobber,tag=FishingBobber] at @s run function item:fishing/magma/bobber
    # execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data{item_type:"fishing_bobber"} at @s run function item:fishing/bobber/tick