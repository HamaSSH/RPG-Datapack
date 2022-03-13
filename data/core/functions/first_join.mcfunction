# プレイヤーIDの付与
    scoreboard players add World PlayerID 1
    scoreboard players operation @s PlayerID = World PlayerID
    tag @s add PlayerID
# baseステータス設定
    function player:status/init