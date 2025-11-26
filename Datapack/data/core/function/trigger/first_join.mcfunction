#> core:trigger/first_join
# ワールドへの初めてのjoin

# 共通処理
    function core:trigger/join

# プレイヤーIDの付与
    scoreboard players add World PlayerID 1
    scoreboard players operation @s PlayerID = World PlayerID