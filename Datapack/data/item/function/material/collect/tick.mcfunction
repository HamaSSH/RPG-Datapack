#> item:material/collect/tick
# アイテム採集アマスタの常時実行処理

execute on passengers run data modify storage asset:material ID set from entity @s item.components.minecraft:custom_model_data
function #asset:material/collect/block
data remove storage asset:material ID