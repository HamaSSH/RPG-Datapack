# markerのdata.buff → storage
    data modify storage core:temp Data.buff set from entity @s data.buff
# durationを1減らす
    execute store result storage core:temp Data.buff.duration int 0.999 run data get storage core:temp Data.buff.duration
# storage → markerのdata.buff
    data modify entity @s data.buff set from storage core:temp Data.buff
# durationが0の場合はkill
    execute if data storage core:temp Data.buff{duration:0} as @a[tag=this,limit=1] run function core:buff/remove
    execute if data storage core:temp Data.buff{duration:0} run kill @s