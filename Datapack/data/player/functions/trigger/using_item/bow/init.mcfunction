#> player:trigger/using_item/bow/init
# 弓の使用を開始した時の初期処理

tag @s add UsingBow
# スロット9~11にある矢筒(弓矢の姿)のCountを64に増やす
    data modify storage lib: NewInventory set from storage player: Inventory
    data modify storage lib: NewInventory[{id:"minecraft:arrow",tag:{Quiver:{}}}].Count set value 2b

# プレイヤーのインベントリ操作
    function lib:inventory/set/accessories