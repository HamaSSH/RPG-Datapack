# プレイヤーとバフ管理マーカーの結び付け
    scoreboard players operation @s PlayerID = @a[tag=this,limit=1] PlayerID
# バフの情報を格納
    data modify entity @s data.buff set from storage core:temp Data.addBuff
# リセット
    tag @s remove BuffInit