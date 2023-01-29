# バフを受けるプレイヤーをタグ付け
    tag @s add this
# バフmarkerの召喚
    summon marker ~ ~ ~ {Tags:["BuffInit","Buff"]}
# バフの重複防止
    execute as @e[type=marker,tag=!BuffInit] if score @s PlayerID = @a[tag=this,limit=1] PlayerID run function player:buff/manager/compare
# markerの初期処理
    data modify storage player:temp Data.buff set from storage player:temp Data.newBuff[0]
    execute as @e[type=marker,tag=BuffInit,limit=1] run function player:buff/manager/init
# プレイヤーのバフスコアを加算
    execute unless score $KillNewBuff Temporary matches 1 run function player:buff/add
    execute if entity @s[advancements={player:buff/4tick={tick0=false}}] run advancement grant @s only player:buff/4tick tick0
# リセット
    tag @s remove this
    scoreboard players reset $KillNewBuff
# storage Data.buffの中身がなくなるまで再帰
    data remove storage player:temp Data.newBuff[0]
    execute unless data storage player:temp Data.newBuff[0] run data remove storage player:temp Data
    execute if data storage player:temp Data.newBuff[0] run function player:buff/manager/_