#> player:ui/buff/effect
# エフェクトUIを並べる

# エフェクトの総数を記録
    scoreboard players add $EffectCount Temporary 1

# エフェクトの並びを固定しながら代入
    data modify storage player:ui data.Buff set from entity @s data.Buff
    execute if data storage player:ui data.Buff{Effect:"poison"} run data modify storage player:ui buff.main[1] set from storage player:ui data.Buff.Icon
    execute if data storage player:ui data.Buff{Effect:"haste"} run data modify storage player:ui buff.main[2] set from storage player:ui data.Buff.Icon
    execute if data storage player:ui data.Buff{Effect:"hunger"} run data modify storage player:ui buff.main[3] set from storage player:ui data.Buff.Icon
    execute if data storage player:ui data.Buff{Effect:"jump_boost"} run data modify storage player:ui buff.main[4] set from storage player:ui data.Buff.Icon
    execute if data storage player:ui data.Buff{Effect:"blindness"} run data modify storage player:ui buff.main[5] set from storage player:ui data.Buff.Icon
    execute if data storage player:ui data.Buff{Effect:"water_breathing"} run data modify storage player:ui buff.main[6] set from storage player:ui data.Buff.Icon

# リセット
    data remove storage player:ui data