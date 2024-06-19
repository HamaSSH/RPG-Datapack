#> player:ui/buff/element
# エフェクトUIを並べる

# エフェクトの総数を記録
    scoreboard players add $EffectCount Temporary 1

# エフェクトの並びを固定しながら代入
    data modify storage player:ui data.buff set from entity @s data.buff
    execute if data storage player:ui data.buff{element:"Fire"} run data modify storage player:ui buff.main[0] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{element:"Water"} run data modify storage player:ui buff.main[0] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{element:"Thunder"} run data modify storage player:ui buff.main[0] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{element:"Earth"} run data modify storage player:ui buff.main[0] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{element:"Wind"} run data modify storage player:ui buff.main[0] set from storage player:ui data.buff.icon

# リセット
    data remove storage player:ui data