#> ui:init
# 開かれたUIの初期化処理

# プレイヤーとの結び付け
    execute positioned ~ ~-1.1 ~ run scoreboard players operation @s PlayerID = @p[tag=UIOpen,distance=..0.01] PlayerID

# UIを閉じなくする
    execute if score @s PlayerID matches 1.. run tag @s remove AutoKill