#> player:ui/buff/element
# エフェクトUIを並べる

# エフェクトの総数を記録
    scoreboard players add $EffectCount Temporary 1

# エフェクトの並びを固定しながら代入
    data modify storage player:ui data.Buff set from entity @s data.Buff
    execute if data storage player:ui data.Buff{Element:"Fire"} run data modify storage player:ui buff.main[0] set from storage player:ui data.Buff.Icon
    execute if data storage player:ui data.Buff{Element:"Water"} run data modify storage player:ui buff.main[0] set from storage player:ui data.Buff.Icon
    execute if data storage player:ui data.Buff{Element:"Thunder"} run data modify storage player:ui buff.main[0] set from storage player:ui data.Buff.Icon
    execute if data storage player:ui data.Buff{Element:"Earth"} run data modify storage player:ui buff.main[0] set from storage player:ui data.Buff.Icon
    execute if data storage player:ui data.Buff{Element:"Wind"} run data modify storage player:ui buff.main[0] set from storage player:ui data.Buff.Icon

# リセット
    data remove storage player:ui data