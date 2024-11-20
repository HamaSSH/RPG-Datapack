#> item:material/collect/tick
# アイテム採集アマスタの常時実行処理

data modify storage asset:material namespace set from entity @s ArmorItems[3].components.minecraft:custom_data.namespace
function asset:material/manager/collect with storage asset:material
data remove storage asset:material namespace