#> player:ui/buff/effect
# エフェクトUIを並べる

# エフェクトの総数を記録
    scoreboard players add $EffectCount Temporary 1

# エフェクトの並びを固定しながら代入
    data modify storage player:ui data.buff set from entity @s data.buff
    execute if data storage player:ui data.buff{effect:"poison"} run data modify storage player:ui buff.main[1] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{effect:"haste"} run data modify storage player:ui buff.main[2] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{effect:"hunger"} run data modify storage player:ui buff.main[3] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{effect:"jump_boost"} run data modify storage player:ui buff.main[4] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{effect:"blindness"} run data modify storage player:ui buff.main[5] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{effect:"water_breathing"} run data modify storage player:ui buff.main[6] set from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{effect:"regeneration"} run data modify storage player:ui buff.main[7] set from storage player:ui data.buff.icon

# リセット
    data remove storage player:ui data