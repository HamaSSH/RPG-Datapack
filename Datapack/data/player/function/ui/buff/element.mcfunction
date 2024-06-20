#> player:ui/buff/element
# エフェクトUIを並べる

# エフェクトの総数を記録
    scoreboard players add $EffectCount Temporary 1

# エフェクトの並びを固定しながら代入
    data modify storage player:ui data.buff set from entity @s data.buff
    execute if data storage player:ui data.buff{element:"fire"} run data modify storage player:ui buff.main append from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{element:"water"} run data modify storage player:ui buff.main append from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{element:"thunder"} run data modify storage player:ui buff.main append from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{element:"earth"} run data modify storage player:ui buff.main append from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{element:"wind"} run data modify storage player:ui buff.main append from storage player:ui data.buff.icon

# リセット
    data remove storage player:ui data