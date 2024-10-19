#> item:material/collect/tick
# アイテム採集アマスタの常時実行処理

data modify storage asset:material ID set from entity @s ArmorItems[3].components.minecraft:custom_data.ID
function #asset:material/collect/block
data remove storage asset:material ID