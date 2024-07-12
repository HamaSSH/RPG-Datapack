#> player:ui/buff/effect
# エフェクトUIを並べる

# エフェクトの総数を記録
    scoreboard players add $EffectCount Temporary 1

# エフェクトの並びを固定しながら代入
    data modify storage player:ui data.buff set from entity @s data.buff
    execute if data storage player:ui data.buff{effect:"poison"} run data modify storage player:ui buff.main append from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{effect:"haste"} run data modify storage player:ui buff.main append from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{effect:"hunger"} run data modify storage player:ui buff.main append from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{effect:"jump_boost"} run data modify storage player:ui buff.main append from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{effect:"blindness"} run data modify storage player:ui buff.main append from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{effect:"water_breathing"} run data modify storage player:ui buff.main append from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{effect:"regeneration"} run data modify storage player:ui buff.main append from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{effect:"fire_resistance"} run data modify storage player:ui buff.main append from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{effect:"slow_falling"} run data modify storage player:ui buff.main append from storage player:ui data.buff.icon
    execute if data storage player:ui data.buff{effect:"invisibility"} run data modify storage player:ui buff.main append from storage player:ui data.buff.icon

# リセット
    data remove storage player:ui data