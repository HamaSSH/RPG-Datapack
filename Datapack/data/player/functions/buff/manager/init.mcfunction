# プレイヤーとバフ管理マーカーの結び付け
    scoreboard players operation @s PlayerID = @a[tag=this,limit=1] PlayerID
# バフの情報を格納
    data modify entity @s data.buff set from storage player:temp Data.buff
# 状態異常のデータがあれば格納
    execute if data storage player:temp Data.buff{source:"paralize"} run tag @s add Paralize
    execute if data storage player:temp Data.buff{source:"weakness"} run tag @s add Weakness
# もしプレイヤーが既により強いバフを受けていたら
    execute if score $KillNewBuff Temporary matches 1 run kill @s
# 初期化終わり
    tag @s remove BuffInit