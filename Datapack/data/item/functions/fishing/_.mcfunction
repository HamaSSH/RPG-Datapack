#> item:fishing/_
# 釣った魚としての処理

# 拾えないようにする
    data modify entity @s PickupDelay set value 32767s
    data modify storage item: Motion set from entity @s Motion

# 抽選
    loot spawn ~ ~ ~ loot item:fishing/_
    execute as @e[type=item,distance=..0] run function item:fishing/loot_table

# 後処理
    data remove storage item: Motion
    kill @s