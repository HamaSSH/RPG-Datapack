#> player:trigger/consume_item/_
# 消費アイテムを消費した時の処理

# プレイヤー名のストレージのアイテムデータを取得
    loot replace block 0 0 0 container.0 loot lib:get_mcid
    data modify storage player: MCID set from block 0 0 0 Items[0].tag.SkullOwner.Name
    function player:trigger/consume_item/get_data with storage player:

# HP・満腹度回復
    execute store result score @s Healing run data get storage player: Consumables.Healing
    execute store result score @s Saturaion run data get storage player: Consumables.Saturation 0.999

# バフをプレイヤーに付与
    function player:buff/_

# リセット
    data remove storage player: MCID
    data remove storage player: Consumables
    function player:trigger/using_item/consumables/reset
    advancement revoke @s only player:trigger/consume_item