#> player:trigger/drop_item
# アイテムをドロップしたことの検知と処理

# ドロップしたアイテムのデータ→ストレージ
    data modify storage player: DroppedItem set from entity @s Item

# 矢筒の場合、idを必ずcarrot_on_a_stickにする
    data modify entity @s Item.id set value "carrot_on_a_stick"