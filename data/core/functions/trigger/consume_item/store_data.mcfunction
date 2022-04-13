# プレイヤーとバフ管理マーカーの結び付け
    scoreboard players operation @s PlayerID = @a[tag=this,limit=1] PlayerID
# 1tickの間だけデータを保存しておくmarker
    data modify entity @s data.buff set from storage core:temp Data.tag.buff
# リセット
    tag @s remove ConsumeTempInit