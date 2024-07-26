#> player:trigger/consume_item/_
# 消費アイテムを消費した時の処理

# プレイヤー名のストレージのアイテムデータを取得
    loot replace block 0 0 0 container.0 loot lib:get_mcid
    data modify storage player: MCID set from block 0 0 0 Items[0].components.minecraft:profile.name
    function player:trigger/consume_item/get_data with storage player:

# HP回復
    execute store result score @s Healing run data get storage player: Consumables.healing

# 魔法誤射防止タイマー
    scoreboard players set @s CantCastMagic 10

# 初めてのドーピング
    execute if data storage player: Consumables{custom_potion:1b} run advancement grant @s only asset:achievement/2.1

# バフをプレイヤーに付与
    data modify storage player: NewBuff set from storage player: Consumables.buff
    function player:buff/_

# リセット
    data remove storage player: MCID
    data remove storage player: Consumables
    function player:trigger/using_item/consumables/reset
    advancement revoke @s only player:trigger/consume_item