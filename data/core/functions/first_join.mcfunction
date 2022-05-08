# プレイヤーIDの付与
    scoreboard players add World PlayerID 1
    scoreboard players operation @s PlayerID = World PlayerID
# baseステータス設定
    function player:status/init
# 初期化終了
    tag @s add PlayerID