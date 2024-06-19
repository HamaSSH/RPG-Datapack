#> player:ui/buff/status
# ステータスバフUIを並べる

# バフの総数を記録
    scoreboard players add $BuffCount Temporary 1

# ステータスバフの並びを固定しながら代入
    data modify storage player:ui data.buff set from entity @s data.buff
    execute if data storage player:ui data.buff{status:"HP"} run data modify storage player:ui buff.main[10] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{status:"HPR"} run data modify storage player:ui buff.main[11] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{status:"MP"} run data modify storage player:ui buff.main[12] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{status:"MPR"} run data modify storage player:ui buff.main[13] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{status:"STR"} run data modify storage player:ui buff.main[14] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{status:"INT"} run data modify storage player:ui buff.main[15] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{status:"DEX"} run data modify storage player:ui buff.main[16] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{status:"DEF"} run data modify storage player:ui buff.main[17] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{status:"AGI"} run data modify storage player:ui buff.main[18] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{status:"CRT"} run data modify storage player:ui buff.main[19] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{status:"LUK"} run data modify storage player:ui buff.main[20] set from storage player:ui data.buff.icon

# リセット
    data remove storage player:ui data