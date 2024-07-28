#> item:fishing/_
# 釣った魚としての処理

# 拾えないようにする
    data modify entity @s PickupDelay set value 32767s
    data modify storage item: Motion set from entity @s Motion
    kill @s

# 抽選＆データ生成
    function item:fishing/loot/_
    data modify storage item: chest_type set from entity @e[type=item,distance=..0,limit=1] Item.components.minecraft:custom_data.chest_type
    execute if data storage item: chest_type as @e[type=item,distance=..0,limit=1] at @s run function item:fishing/chest/summon
    data modify storage item: Fish set from entity @e[type=item,distance=..0,limit=1] Item.components.minecraft:custom_data.fish
    data modify storage item: Fish.id set from entity @e[type=item,distance=..0,limit=1] Item.components.minecraft:custom_model_data
    execute if data storage item: Fish as @e[type=item,distance=..0] run function item:fishing/fish/set_data with storage item: Fish

# 後処理
    data remove storage item: chest_type
    data remove storage item: Motion
    data remove storage item: Fish