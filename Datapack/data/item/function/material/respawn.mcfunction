#> item:material/respawn
# カスタム採集アイテムのリスポーン処理

data modify storage asset:material namespace set from entity @s ArmorItems[3].components.minecraft:custom_data.namespace
function asset:material/manager/respawn with storage asset:material
data remove storage asset:material namespace