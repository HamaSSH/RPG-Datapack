#> ui:init
# 開かれたUIの初期化処理

# 初期playsound
    execute on passengers on passengers run tag @s add InitialSound

# プレイヤーとの結び付け
    execute positioned ~ ~-1.1 ~ run scoreboard players operation @s PlayerID = @p[tag=OpenedUI] PlayerID

# UIを閉じなくする
    execute if score @s PlayerID matches 1.. run tag @s remove AutoKill