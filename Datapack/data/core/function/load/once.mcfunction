#> core:load/once
# 初期設定用のコマンド(一度きり実行)

# データパックのバージョン
    data modify storage global: version set value "v0.3.0"

# スコアボード
    scoreboard objectives add Rejoin custom:leave_game "ワールドRejoin処理"
    scoreboard objectives add PlayerID dummy "プレイヤーID"