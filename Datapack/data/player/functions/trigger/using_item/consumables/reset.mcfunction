#> player:trigger/using_item/consumables/reset
# 消費アイテムのデータの削除

tag @s remove UsingConsumables
# プレイヤー名のストレージ内のアイテムデータを削除
    loot replace block 0 0 0 container.0 loot lib:get_mcid
    data modify storage player: MCID set from block 0 0 0 Items[0].tag.SkullOwner.Name
    function player:trigger/using_item/consumables/remove_data with storage player:

# リセット
    data remove storage player: MCID