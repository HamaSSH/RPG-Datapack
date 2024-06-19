#> player:buff/_
# バフをプレイヤーに付与

# プレイヤー検索用のタグとPlayerID
    tag @s add IsBuffed
    tag @s add BuffOwner
    scoreboard players operation $PlayerID Temporary = @s PlayerID

# バフごとに管理用のMarkerを召喚＋プレイヤーのスコアを設定
    data modify storage player: buff set from storage player: NewBuff[0]
    execute if data storage player: NewBuff[0] run function player:buff/shaping
    execute positioned 0.0 1.0 0.0 run function player:buff/init with storage player: buff

# リセット
    tag @s remove BuffOwner
    scoreboard players reset $PlayerID Temporary
    data remove storage player: NewBuff
    data remove storage player: buff