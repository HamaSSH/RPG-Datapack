# 状態異常のパーティクル
    execute if entity @s[tag=Weakness] at @e[tag=Enemy,tag=this,limit=1] run particle minecraft:bubble_pop ~ ~0.5 ~ 0.2 0.3 0.2 0 10 force
    execute if entity @s[tag=Paralize] at @e[tag=Enemy,tag=this,limit=1] run particle minecraft:dust 1000000000 1000000000 100 2 ~ ~0.9 ~ 0.2 0.1 0.2 0 7 force
# markerのdata.buff → storage
    data modify storage mob:temp Data.buff set from entity @s data.buff
# durationを1減らす
    execute store result storage mob:temp Data.buff.duration int 0.999 run data get storage mob:temp Data.buff.duration
# storage → markerのdata.buff
    data modify entity @s data.buff set from storage mob:temp Data.buff
# durationが0の場合はkill
    execute if data storage mob:temp Data.buff{duration:0} as @e[tag=Enemy,tag=this,limit=1] run function mob:buff/remove
    execute if data storage mob:temp Data.buff{duration:0} run kill @s