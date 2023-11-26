#> player:combat/main/bow/quiver/_
# インベントリが変更された際の矢筒に対する処理

# 全ての矢筒をcarrot_on_a_stickに初期化
    data modify storage lib: NewInventory set from storage player: Inventory
    data modify storage lib: NewInventory[{tag:{Quiver:{}}}].id set value "minecraft:carrot_on_a_stick"
    data modify storage lib: NewInventory[{tag:{Quiver:{}}}].Count set value 1b
    tag @s remove QuiverEquipped

# 弓矢が1以上であれば装備品内の矢筒→弓矢
    function player:combat/main/bow/quiver/to_arrow

# プレイヤーのインベントリ操作
    execute unless entity @s[tag=NewInventorySet] run function lib:inventory/set
    tag @s add NewInventorySet