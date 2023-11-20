#> player:trigger/using_item/consumables/init
# 消費アイテムのデータの格納

tag @s add UsingConsumables
# プレイヤー名のストレージにアイテムデータを格納
    loot replace block 0 0 0 container.0 loot lib:get_mcid
    data modify storage player: MCID set from block 0 0 0 Items[0].tag.SkullOwner.Name
    function player:trigger/using_item/consumables/store_data with storage player:

# リセット
    data remove storage player: MCID