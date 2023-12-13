#> player:ui/buff
# 現状受けているバフ表示

# 初期化
    data modify storage player:ui buff.main set value ["","","","","","","","","","","","","","","","","","","","",""]

# 左右に括弧
    data modify storage player:ui buff.bracketL set value '"\\uE302\\uF822"'
    data modify storage player:ui buff.bracketR set value '"\\uF824\\uE303"'

# 現在受けているバフのアイコンを取得
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    execute positioned 0.0 1.0 0.0 as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] if score @s PlayerID = $PlayerID Temporary on passengers if entity @s[tag=Element] run function player:ui/buff/element
    execute positioned 0.0 1.0 0.0 as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] if score @s PlayerID = $PlayerID Temporary on passengers if entity @s[tag=Effect] run function player:ui/buff/effect
    execute positioned 0.0 1.0 0.0 as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] if score @s PlayerID = $PlayerID Temporary on passengers if entity @s[tag=Status] run function player:ui/buff/status

# バフの数に応じて前後にスペースを代入
    # ステータスバフ
        execute if score $BuffCount Temporary matches 1 run data modify storage player:ui buff.status.prefix set value '"\\uF805"'
        execute if score $BuffCount Temporary matches 1 run data modify storage player:ui buff.status.suffix set value '"\\uF804"'
        execute if score $BuffCount Temporary matches 2 run data modify storage player:ui buff.status.prefix set value '"\\uF805\\uF804"'
        execute if score $BuffCount Temporary matches 2 run data modify storage player:ui buff.status.suffix set value '"\\uF804\\uF805"'
        execute if score $BuffCount Temporary matches 3 run data modify storage player:ui buff.status.prefix set value '"\\uF805\\uF804\\uF805"'
        execute if score $BuffCount Temporary matches 3 run data modify storage player:ui buff.status.suffix set value '"\\uF804\\uF805\\uF804"'
        execute if score $BuffCount Temporary matches 4 run data modify storage player:ui buff.status.prefix set value '"\\uF805\\uF804\\uF805\\uF804"'
        execute if score $BuffCount Temporary matches 4 run data modify storage player:ui buff.status.suffix set value '"\\uF804\\uF805\\uF804\\uF805"'
        execute if score $BuffCount Temporary matches 5 run data modify storage player:ui buff.status.prefix set value '"\\uF805\\uF804\\uF805\\uF804\\uF805"'
        execute if score $BuffCount Temporary matches 5 run data modify storage player:ui buff.status.suffix set value '"\\uF804\\uF805\\uF804\\uF805\\uF804"'
        execute if score $BuffCount Temporary matches 6 run data modify storage player:ui buff.status.prefix set value '"\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804"'
        execute if score $BuffCount Temporary matches 6 run data modify storage player:ui buff.status.suffix set value '"\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805"'
        execute if score $BuffCount Temporary matches 7 run data modify storage player:ui buff.status.prefix set value '"\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805"'
        execute if score $BuffCount Temporary matches 7 run data modify storage player:ui buff.status.suffix set value '"\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804"'
        execute if score $BuffCount Temporary matches 8 run data modify storage player:ui buff.status.prefix set value '"\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804"'
        execute if score $BuffCount Temporary matches 8 run data modify storage player:ui buff.status.suffix set value '"\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805"'
        execute if score $BuffCount Temporary matches 9 run data modify storage player:ui buff.status.prefix set value '"\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805"'
        execute if score $BuffCount Temporary matches 9 run data modify storage player:ui buff.status.suffix set value '"\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804"'
        execute if score $BuffCount Temporary matches 10 run data modify storage player:ui buff.status.prefix set value '"\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804"'
        execute if score $BuffCount Temporary matches 10 run data modify storage player:ui buff.status.suffix set value '"\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805"'
        execute if score $BuffCount Temporary matches 11 run data modify storage player:ui buff.status.prefix set value '"\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805"'
        execute if score $BuffCount Temporary matches 11 run data modify storage player:ui buff.status.suffix set value '"\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804\\uF805\\uF804"'
    # エフェクト
        execute if score $EffectCount Temporary matches 1 run data modify storage player:ui buff.effect.prefix set value '"\\uF805"'
        execute if score $EffectCount Temporary matches 1 run data modify storage player:ui buff.effect.suffix set value '"\\uF805"'
        execute if score $EffectCount Temporary matches 2 run data modify storage player:ui buff.effect.prefix set value '"\\uF805\\uF806"'
        execute if score $EffectCount Temporary matches 2 run data modify storage player:ui buff.effect.suffix set value '"\\uF805\\uF806"'
        execute if score $EffectCount Temporary matches 3 run data modify storage player:ui buff.effect.prefix set value '"\\uF805\\uF806\\uF806"'
        execute if score $EffectCount Temporary matches 3 run data modify storage player:ui buff.effect.suffix set value '"\\uF804\\uF806\\uF807"'
        execute if score $EffectCount Temporary matches 4 run data modify storage player:ui buff.effect.prefix set value '"\\uF805\\uF806\\uF806\\uF806"'
        execute if score $EffectCount Temporary matches 4 run data modify storage player:ui buff.effect.suffix set value '"\\uF805\\uF806\\uF807\\uF805"'
        execute if score $EffectCount Temporary matches 5 run data modify storage player:ui buff.effect.prefix set value '"\\uF805\\uF806\\uF806\\uF806\\uF806"'
        execute if score $EffectCount Temporary matches 5 run data modify storage player:ui buff.effect.suffix set value '"\\uF805\\uF806\\uF807\\uF805\\uF806"'
        execute if score $EffectCount Temporary matches 6 run data modify storage player:ui buff.effect.prefix set value '"\\uF805\\uF806\\uF806\\uF806\\uF806\\uF807"'
        execute if score $EffectCount Temporary matches 6 run data modify storage player:ui buff.effect.suffix set value '"\\uF804\\uF806\\uF807\\uF805\\uF806\\uF806"'
    # 調整用
        execute unless score $BuffCount Temporary matches 1.. run data modify storage player:ui buff.separator set value '"\\uF802"'
        execute if score $BuffCount Temporary matches 1.. if score $EffectCount Temporary matches 1.. run data modify storage player:ui buff.extra set value '"\\uF801"'

# リセット
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $BuffCount Temporary
    scoreboard players reset $EffectCount Temporary