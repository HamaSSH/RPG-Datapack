#> ui:init
# 開かれたUIの初期化処理

# プレイヤーとの結び付け
    execute positioned ~ ~-1.1 ~ run scoreboard players operation @s PlayerID = @p PlayerID

# UIを閉じなくする
    tag @s remove AutoKill