#> item:material/respawn
# カスタム採集アイテムのリスポーン処理

data modify storage asset:material ID set from entity @s ArmorItems[3].components.minecraft:custom_data.ID
function #asset:material/respawn
data remove storage asset:material ID