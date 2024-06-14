#> player:trigger/drop_item
# アイテムをドロップしたことの検知と処理

# ドロップしたアイテムのデータ→ストレージ
    data modify storage player: DroppedItem set from entity @s Item

# 矢筒の場合、idを必ずcarrot_on_a_stickにする
    execute if data storage player: DroppedItem.components.minecraft:custom_data.quiver run data modify entity @s Item.id set value "carrot_on_a_stick"

# リセット
    data remove storage player: DroppedItem