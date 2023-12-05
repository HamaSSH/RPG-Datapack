#> player:init
# プレイヤーが最初にワールドに入った時の処理

# プレイヤーIDの付与
    scoreboard players add World PlayerID 1
    scoreboard players operation @s PlayerID = World PlayerID

# 利き手の設定
    tag @s add RightHanded

# 初期ステータス
    function player:status/init

# 実績の初期化
    function asset:achievement/init