#> player:ui/buff/status
# ステータスバフUIを並べる

# バフの総数を記録
    scoreboard players add $BuffCount Temporary 1

# ステータスバフの並びを固定しながら代入
    data modify storage player:ui data.Buff set from entity @s data.Buff
    execute if data storage player:ui data.Buff{Status:"HP"} run data modify storage player:ui buff.main[10] set from storage player:ui data.Buff.Icon
    execute if data storage player:ui data.Buff{Status:"HPR"} run data modify storage player:ui buff.main[11] set from storage player:ui data.Buff.Icon
    execute if data storage player:ui data.Buff{Status:"MP"} run data modify storage player:ui buff.main[12] set from storage player:ui data.Buff.Icon
    execute if data storage player:ui data.Buff{Status:"MPR"} run data modify storage player:ui buff.main[13] set from storage player:ui data.Buff.Icon
    execute if data storage player:ui data.Buff{Status:"STR"} run data modify storage player:ui buff.main[14] set from storage player:ui data.Buff.Icon
    execute if data storage player:ui data.Buff{Status:"INT"} run data modify storage player:ui buff.main[15] set from storage player:ui data.Buff.Icon
    execute if data storage player:ui data.Buff{Status:"DEX"} run data modify storage player:ui buff.main[16] set from storage player:ui data.Buff.Icon
    execute if data storage player:ui data.Buff{Status:"DEF"} run data modify storage player:ui buff.main[17] set from storage player:ui data.Buff.Icon
    execute if data storage player:ui data.Buff{Status:"AGI"} run data modify storage player:ui buff.main[18] set from storage player:ui data.Buff.Icon
    execute if data storage player:ui data.Buff{Status:"CRT"} run data modify storage player:ui buff.main[19] set from storage player:ui data.Buff.Icon
    execute if data storage player:ui data.Buff{Status:"LUK"} run data modify storage player:ui buff.main[20] set from storage player:ui data.Buff.Icon

# リセット
    data remove storage player:ui data