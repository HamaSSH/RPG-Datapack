#> player:ui/buff/element
# エフェクトUIを並べる

# エフェクトの総数を記録
    scoreboard players add $EffectCount Temporary 1

# エフェクトの並びを固定しながら代入
    data modify storage player:ui data.Buff set from entity @s data.Buff
    execute if data storage player:ui data.Buff{element:"Fire"} run data modify storage player:ui buff.main[0] set from storage player:ui data.Buff.icon
    execute if data storage player:ui data.Buff{element:"Water"} run data modify storage player:ui buff.main[0] set from storage player:ui data.Buff.icon
    execute if data storage player:ui data.Buff{element:"Thunder"} run data modify storage player:ui buff.main[0] set from storage player:ui data.Buff.icon
    execute if data storage player:ui data.Buff{element:"Earth"} run data modify storage player:ui buff.main[0] set from storage player:ui data.Buff.icon
    execute if data storage player:ui data.Buff{element:"Wind"} run data modify storage player:ui buff.main[0] set from storage player:ui data.Buff.icon

# リセット
    data remove storage player:ui data