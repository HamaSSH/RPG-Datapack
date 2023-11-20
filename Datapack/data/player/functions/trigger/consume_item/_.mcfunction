#> player:trigger/consume_item/_
# 消費アイテムを消費した時の処理

# プレイヤー名のストレージのアイテムデータを取得
    loot replace block 0 0 0 container.0 loot lib:get_mcid
    data modify storage player: MCID set from block 0 0 0 Items[0].tag.SkullOwner.Name
    function player:trigger/consume_item/get_data with storage player:

#
    tellraw @a {"nbt":"Consumables","storage":"player:"}

# リセット
    data remove storage player: MCID
    advancement revoke @s only player:trigger/consume_item