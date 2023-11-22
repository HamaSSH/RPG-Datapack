#> player:buff/_
# バフをプレイヤーに付与

# バフごとに管理用のMarkerを召喚＋プレイヤーのスコアを設定
    data modify storage player: Buff set from storage player: Consumables.Buff[0]
    function player:buff/add with storage player: Buff
