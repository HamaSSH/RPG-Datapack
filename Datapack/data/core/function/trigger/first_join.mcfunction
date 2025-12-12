#> core:trigger/first_join
# ワールドへの初めてのjoin

# 共通処理
    function core:trigger/join

# プレイヤーIDの付与
    scoreboard players add World PlayerID 1
    scoreboard players operation @s PlayerID = World PlayerID

# ステータス初期化処理
    attribute @s attack_speed base set 3.0
    attribute @s scale base set 0.92448
    attribute @s oxygen_bonus base set 0
    function player:status/init