#> player:ui/buff
# 現状受けているバフ表示

# 現在受けているバフのアイコンを取得
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    # execute positioned 0.0 1.0 0.0 as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] if score @s PlayerID = $PlayerID Temporary on passengers if entity @s[tag=Effect] run data modify storage player:ui buff.main append from entity @s data.Buff.Icon
    # execute store result score $EffectCount Temporary if data storage player:ui buff.main[]
    execute positioned 0.0 1.0 0.0 as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] if score @s PlayerID = $PlayerID Temporary on passengers run data modify storage player:ui buff.main append from entity @s data.Buff.Icon
    execute store result score $BuffCount Temporary if data storage player:ui buff.main[]
    scoreboard players operation $BuffCount Temporary -= $EffectCount Temporary

# バフの数に応じて前後にスペースを代入
    # execute store result storage test test int 1 if data storage player:ui buff.main[]
    execute if score $BuffCount Temporary matches 1 run data modify storage player:ui buff.prefix set value '["\\uF805","\\uF809\\uF807","\\uE302"]'
    execute if score $BuffCount Temporary matches 1 run data modify storage player:ui buff.suffix set value '["\\uF823\\uE303","\\uF809\\uF807","\\uF804"]'
    execute if score $BuffCount Temporary matches 2 run data modify storage player:ui buff.prefix set value '["\\uF805\\uF804","\\uF809\\uF807","\\uE302"]'
    execute if score $BuffCount Temporary matches 2 run data modify storage player:ui buff.suffix set value '["\\uF823\\uE303","\\uF809\\uF807","\\uF804\\uF805"]'
    execute if score $BuffCount Temporary matches 3 run data modify storage player:ui buff.prefix set value '["\\uF805\\uF804\\uF805","\\uF809\\uF807","\\uE302"]'
    execute if score $BuffCount Temporary matches 3 run data modify storage player:ui buff.suffix set value '["\\uF823\\uE303","\\uF809\\uF807","\\uF804\\uF805\\uF804"]'
    execute if score $BuffCount Temporary matches 4 run data modify storage player:ui buff.prefix set value '["\\uF805\\uF804\\uF805\\uF804","\\uF809\\uF807","\\uE302"]'
    execute if score $BuffCount Temporary matches 4 run data modify storage player:ui buff.suffix set value '["\\uF823\\uE303","\\uF809\\uF807","\\uF804\\uF805\\uF804\\uF805"]'
    execute if score $BuffCount Temporary matches 5 run data modify storage player:ui buff.prefix set value '["\\uF805\\uF804\\uF805\\uF804\\uF805","\\uF809\\uF807","\\uE302"]'
    execute if score $BuffCount Temporary matches 5 run data modify storage player:ui buff.suffix set value '["\\uF823\\uE303","\\uF809\\uF807","\\uF804\\uF805\\uF804\\uF805\\uF804"]'


# リセット
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $EffectCount Temporary
    scoreboard players reset $BuffCount Temporary