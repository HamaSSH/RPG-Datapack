#> item:fishing/_
# 釣った魚としての処理

# 拾えないようにする
    data modify entity @s PickupDelay set value 32767s
    data modify storage item: Motion set from entity @s Motion
    kill @s

# 抽選＆データ生成
    loot spawn ~ ~ ~ loot item:fishing/loot
    data modify storage item: Fish set from entity @e[type=item,distance=..0,limit=1] Item.components.minecraft:custom_data.fish
    data modify storage item: Fish.id set from entity @e[type=item,distance=..0,limit=1] Item.components.minecraft:custom_model_data
    execute if data storage item: Fish as @e[type=item,distance=..0] run function item:fishing/loot with storage item: Fish
    # execute unless data storage item: Fish run function item:fishing/chest

# 後処理
    data remove storage item: Motion
    data remove storage item: Fish