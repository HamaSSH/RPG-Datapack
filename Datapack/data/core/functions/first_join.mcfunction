##########
#>
#

# プレイヤーIDの付与
    scoreboard players add World PlayerID 1
    scoreboard players operation @s PlayerID = World PlayerID
# baseステータス設定
    function player:status/init

# 実績
    advancement grant @s only asset:achievement/_
    advancement grant @s only asset:achievement/1.7
    advancement grant @s only asset:achievement/2.7
    advancement grant @s only asset:achievement/3.7