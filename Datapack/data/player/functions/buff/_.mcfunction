#> player:buff/_
# バフをプレイヤーに付与

# バフごとに管理用のMarkerを召喚＋プレイヤーのスコアを設定
    data modify storage player: Buff set from storage player: Consumables.Buff[0]
    function player:buff/add with storage player: Buff

# on origin を使うためのAECを召喚
    tag @s add BuffOwner
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    execute positioned 0 1 0 summon area_effect_cloud run function player:buff/manager/root/_

# リセット
    tag @s remove BuffOwner
    scoreboard players reset $PlayerID Temporary