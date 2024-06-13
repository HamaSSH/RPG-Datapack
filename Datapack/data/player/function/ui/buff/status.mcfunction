#> player:ui/buff/status
# ステータスバフUIを並べる

# バフの総数を記録
    scoreboard players add $BuffCount Temporary 1

# ステータスバフの並びを固定しながら代入
    data modify storage player:ui data.Buff set from entity @s data.Buff
    execute if data storage player:ui data.Buff{status:"HP"} run data modify storage player:ui buff.main[10] set from storage player:ui data.Buff.icon
    execute if data storage player:ui data.Buff{status:"HPR"} run data modify storage player:ui buff.main[11] set from storage player:ui data.Buff.icon
    execute if data storage player:ui data.Buff{status:"MP"} run data modify storage player:ui buff.main[12] set from storage player:ui data.Buff.icon
    execute if data storage player:ui data.Buff{status:"MPR"} run data modify storage player:ui buff.main[13] set from storage player:ui data.Buff.icon
    execute if data storage player:ui data.Buff{status:"STR"} run data modify storage player:ui buff.main[14] set from storage player:ui data.Buff.icon
    execute if data storage player:ui data.Buff{status:"INT"} run data modify storage player:ui buff.main[15] set from storage player:ui data.Buff.icon
    execute if data storage player:ui data.Buff{status:"DEX"} run data modify storage player:ui buff.main[16] set from storage player:ui data.Buff.icon
    execute if data storage player:ui data.Buff{status:"DEF"} run data modify storage player:ui buff.main[17] set from storage player:ui data.Buff.icon
    execute if data storage player:ui data.Buff{status:"AGI"} run data modify storage player:ui buff.main[18] set from storage player:ui data.Buff.icon
    execute if data storage player:ui data.Buff{status:"CRT"} run data modify storage player:ui buff.main[19] set from storage player:ui data.Buff.icon
    execute if data storage player:ui data.Buff{status:"LUK"} run data modify storage player:ui buff.main[20] set from storage player:ui data.Buff.icon

# リセット
    data remove storage player:ui data