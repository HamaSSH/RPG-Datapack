#> player:trigger/using_item/bow/reset
# 弓の使用を終えた際のリセット処理

tag @s remove UsingBow
# スロット9~11にある矢筒(弓矢の姿)のCountを1に戻す
    data modify storage lib: NewInventory set from storage player: Inventory
    data modify storage lib: NewInventory[{tag:{Quiver:{}}}].Count set value 1b

# プレイヤーのインベントリ操作
    function lib:inventory/set/accessories