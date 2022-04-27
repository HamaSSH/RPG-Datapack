# バフを受けるプレイヤーをタグ付け
    tag @s add this
# バフmarkerの召喚
    summon marker ~ ~ ~ {Tags:["BuffInit","Buff"]}
# バフの重複防止
    execute as @e[type=marker,tag=!BuffInit] if score @s PlayerID = @a[tag=this,limit=1] PlayerID run function core:buff/manager/compare
# markerの初期処理
    data modify storage core:temp Data.buff set from storage core:temp Data.newBuff[0]
    execute as @e[type=marker,tag=BuffInit,limit=1] run function core:buff/manager/init
# プレイヤーのバフスコアを加算
    execute unless score $KillNewBuff Temporary matches 1 run function core:buff/add
    execute if entity @s[advancements={core:buff/4tick={tick0=false}}] run advancement grant @s only core:buff/4tick tick0
# リセット
    tag @s remove this
    scoreboard players reset $KillNewBuff
# storage Data.buffの中身がなくなるまで再帰
    data remove storage core:temp Data.newBuff[0]
    execute unless data storage core:temp Data.newBuff[0] run data remove storage core:temp Data
    execute if data storage core:temp Data.newBuff[0] run function core:buff/manager/_