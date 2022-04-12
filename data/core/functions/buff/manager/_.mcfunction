# バフmarkerの召喚
    summon marker ~ ~ ~ {Tags:["BuffInit","Buff"]}
# markerの初期処理
    data modify storage core:temp Data.addBuff set from storage core:temp Data.buff[0]
    execute as @e[type=marker,tag=BuffInit,limit=1] run function core:buff/manager/init
# プレイヤーのバフスコアを加算
    function core:buff/add
    execute if entity @s[advancements={core:buff/1sec={tick0=false}}] run advancement grant @s only core:buff/1sec tick0
# storage Data.buffの中身がなくなるまで再帰
    data remove storage core:temp Data.buff[0]
    execute unless data storage core:temp Data.buff[0] run data remove storage core:temp Data
    execute if data storage core:temp Data.buff[0] run function core:buff/manager/_