# バフを受けるプレイヤーをタグ付け
    tag @s add this
# バフmarkerの召喚
    summon marker ~ ~ ~ {Tags:["BuffInit","MobBuff"]}
# バフの重複防止
    execute as @e[type=marker,tag=!BuffInit] if score @s MobID = @e[tag=Enemy,tag=this,limit=1] MobID run function mob:buff/manager/compare
# markerの初期処理
    data modify storage mob:temp Data.buff set from storage mob:temp Data.newBuff[0]
    execute as @e[type=marker,tag=BuffInit,limit=1] run function mob:buff/manager/init
# プレイヤーのバフスコアを加算
    execute unless score $KillNewBuff Temporary matches 1 run function mob:buff/add
# リセット
    tag @s remove this
    scoreboard players reset $KillNewBuff
# storage Data.buffの中身がなくなるまで再帰
    data remove storage mob:temp Data.newBuff[0]
    execute unless data storage mob:temp Data.newBuff[0] run data remove storage mob:temp Data
    execute if data storage mob:temp Data.newBuff[0] run function mob:buff/manager/_