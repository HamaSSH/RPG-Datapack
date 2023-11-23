#> player:buff/_
# バフをプレイヤーに付与

# プレイヤー検索用のタグとPlayerID
    tag @s add BuffOwner
    scoreboard players operation $PlayerID Temporary = @s PlayerID

# バフごとに管理用のMarkerを召喚＋プレイヤーのスコアを設定
    data modify storage player: Buff set from storage player: Consumables.Buff[0]
    execute positioned 0.0 1.0 0.0 run function player:buff/init with storage player: Buff

# リセット
    tag @s remove BuffOwner
    scoreboard players reset $PlayerID Temporary
    data remove storage player: Buff