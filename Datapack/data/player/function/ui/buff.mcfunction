#> player:ui/buff
# 現状受けているバフ表示

# 左右に括弧
    data modify storage player:ui buff.bracketL set value '"\\uE302\\uF822"'
    data modify storage player:ui buff.bracketR set value '"\\uF824\\uE303"'

# 現在受けているバフのアイコンを取得
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    execute positioned 0.0 1.0 0.0 as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] if score @s PlayerID = $PlayerID Temporary on passengers if entity @s[tag=Element] run function player:ui/buff/effect
    execute positioned 0.0 1.0 0.0 as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] if score @s PlayerID = $PlayerID Temporary on passengers if entity @s[tag=Effect] run function player:ui/buff/effect
    execute positioned 0.0 1.0 0.0 as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] if score @s PlayerID = $PlayerID Temporary on passengers if entity @s[tag=Status] run function player:ui/buff/status

# バフの数に応じて前後にスペースを代入
    # ステータスバフ
        execute if score $BuffCount Temporary matches 1 run data modify storage player:ui buff.status.prefix set value '"\\uF805"'
        execute if score $BuffCount Temporary matches 1 run data modify storage player:ui buff.status.suffix set value '"\\uF804"'
        execute if score $BuffCount Temporary matches 2 run data modify storage player:ui buff.status.prefix set value '"\\uF808\\uF801"'
        execute if score $BuffCount Temporary matches 2 run data modify storage player:ui buff.status.suffix set value '"\\uF808\\uF801"'
        execute if score $BuffCount Temporary matches 3 run data modify storage player:ui buff.status.prefix set value '"\\uF808\\uF806"'
        execute if score $BuffCount Temporary matches 3 run data modify storage player:ui buff.status.suffix set value '"\\uF808\\uF805"'
        execute if score $BuffCount Temporary matches 4 run data modify storage player:ui buff.status.prefix set value '"\\uF809\\uF802"'
        execute if score $BuffCount Temporary matches 4 run data modify storage player:ui buff.status.suffix set value '"\\uF809\\uF802"'
        execute if score $BuffCount Temporary matches 5 run data modify storage player:ui buff.status.prefix set value '"\\uF809\\uF807"'
        execute if score $BuffCount Temporary matches 5 run data modify storage player:ui buff.status.suffix set value '"\\uF809\\uF806"'
        execute if score $BuffCount Temporary matches 6 run data modify storage player:ui buff.status.prefix set value '"\\uF809\\uF808\\uF803"'
        execute if score $BuffCount Temporary matches 6 run data modify storage player:ui buff.status.suffix set value '"\\uF809\\uF808\\uF803"'
        execute if score $BuffCount Temporary matches 7 run data modify storage player:ui buff.status.prefix set value '"\\uF80A"'
        execute if score $BuffCount Temporary matches 7 run data modify storage player:ui buff.status.suffix set value '"\\uF809\\uF808\\uF807"'
        execute if score $BuffCount Temporary matches 8 run data modify storage player:ui buff.status.prefix set value '"\\uF80A\\uF804"'
        execute if score $BuffCount Temporary matches 8 run data modify storage player:ui buff.status.suffix set value '"\\uF80A\\uF804"'
        execute if score $BuffCount Temporary matches 9 run data modify storage player:ui buff.status.prefix set value '"\\uF80A\\uF808\\uF801"'
        execute if score $BuffCount Temporary matches 9 run data modify storage player:ui buff.status.suffix set value '"\\uF80A\\uF808"'
        execute if score $BuffCount Temporary matches 10 run data modify storage player:ui buff.status.prefix set value '"\\uF80A\\uF808\\uF805"'
        execute if score $BuffCount Temporary matches 10 run data modify storage player:ui buff.status.suffix set value '"\\uF80A\\uF808\\uF805"'
        execute if score $BuffCount Temporary matches 11 run data modify storage player:ui buff.status.prefix set value '"\\uF80A\\uF809\\uF802"'
        execute if score $BuffCount Temporary matches 11 run data modify storage player:ui buff.status.suffix set value '"\\uF80A\\uF809\\uF801"'
    # エフェクト
        execute if score $EffectCount Temporary matches 1 run data modify storage player:ui buff.effect.prefix set value '"\\uF805"'
        execute if score $EffectCount Temporary matches 1 run data modify storage player:ui buff.effect.suffix set value '"\\uF805"'
        execute if score $EffectCount Temporary matches 2 run data modify storage player:ui buff.effect.prefix set value '"\\uF808\\uF803"'
        execute if score $EffectCount Temporary matches 2 run data modify storage player:ui buff.effect.suffix set value '"\\uF808\\uF803"'
        execute if score $EffectCount Temporary matches 3 run data modify storage player:ui buff.effect.prefix set value '"\\uF809\\uF801"'
        execute if score $EffectCount Temporary matches 3 run data modify storage player:ui buff.effect.suffix set value '"\\uF809\\uF801"'
        execute if score $EffectCount Temporary matches 4 run data modify storage player:ui buff.effect.prefix set value '"\\uF809\\uF807"'
        execute if score $EffectCount Temporary matches 4 run data modify storage player:ui buff.effect.suffix set value '"\\uF809\\uF807"'
        execute if score $EffectCount Temporary matches 5 run data modify storage player:ui buff.effect.prefix set value '"\\uF809\\uF808\\uF805"'
        execute if score $EffectCount Temporary matches 5 run data modify storage player:ui buff.effect.suffix set value '"\\uF809\\uF808\\uF805"'
        execute if score $EffectCount Temporary matches 6 run data modify storage player:ui buff.effect.prefix set value '"\\uF80A\\uF803"'
        execute if score $EffectCount Temporary matches 6 run data modify storage player:ui buff.effect.suffix set value '"\\uF80A\\uF803"'
        execute if score $EffectCount Temporary matches 7 run data modify storage player:ui buff.effect.prefix set value '"\\uF80A\\uF808\\uF801"'
        execute if score $EffectCount Temporary matches 7 run data modify storage player:ui buff.effect.suffix set value '"\\uF80A\\uF808\\uF801"'
        execute if score $EffectCount Temporary matches 8 run data modify storage player:ui buff.effect.prefix set value '"\\uF80A\\uF808\\uF807"'
        execute if score $EffectCount Temporary matches 8 run data modify storage player:ui buff.effect.suffix set value '"\\uF80A\\uF808\\uF807"'
        execute if score $EffectCount Temporary matches 9 run data modify storage player:ui buff.effect.prefix set value '"\\uF80A\\uF809\\uF805"'
        execute if score $EffectCount Temporary matches 9 run data modify storage player:ui buff.effect.suffix set value '"\\uF80A\\uF809\\uF805"'
        execute if score $EffectCount Temporary matches 10 run data modify storage player:ui buff.effect.prefix set value '"\\uF80A\\uF809\\uF808\\uF803"'
        execute if score $EffectCount Temporary matches 10 run data modify storage player:ui buff.effect.suffix set value '"\\uF80A\\uF809\\uF808\\uF803"'
        execute if score $EffectCount Temporary matches 11 run data modify storage player:ui buff.effect.prefix set value '"\\uF80B\\uF801"'
        execute if score $EffectCount Temporary matches 11 run data modify storage player:ui buff.effect.suffix set value '"\\uF80B\\uF801"'
        execute if score $EffectCount Temporary matches 12 run data modify storage player:ui buff.effect.prefix set value '"\\uF80B\\uF807"'
        execute if score $EffectCount Temporary matches 12 run data modify storage player:ui buff.effect.suffix set value '"\\uF80B\\uF807"'
        execute if score $EffectCount Temporary matches 13 run data modify storage player:ui buff.effect.prefix set value '"\\uF80B\\uF808\\uF805"'
        execute if score $EffectCount Temporary matches 13 run data modify storage player:ui buff.effect.suffix set value '"\\uF80B\\uF808\\uF805"'
        execute if score $EffectCount Temporary matches 14 run data modify storage player:ui buff.effect.prefix set value '"\\uF80B\\uF809\\uF803"'
        execute if score $EffectCount Temporary matches 14 run data modify storage player:ui buff.effect.suffix set value '"\\uF80B\\uF809\\uF803"'
        execute if score $EffectCount Temporary matches 15 run data modify storage player:ui buff.effect.prefix set value '"\\uF80B\\uF809\\uF808\\uF801"'
        execute if score $EffectCount Temporary matches 15 run data modify storage player:ui buff.effect.suffix set value '"\\uF80B\\uF809\\uF808\\uF801"'
        execute if score $EffectCount Temporary matches 16 run data modify storage player:ui buff.effect.prefix set value '"\\uF80B\\uF809\\uF808\\uF807"'
        execute if score $EffectCount Temporary matches 16 run data modify storage player:ui buff.effect.suffix set value '"\\uF80B\\uF809\\uF808\\uF807"'
    # 調整用
        execute unless score $BuffCount Temporary matches 1.. run data modify storage player:ui buff.separator set value '"\\uF802"'
        execute if score $BuffCount Temporary matches 1.. if score $EffectCount Temporary matches 1.. run data modify storage player:ui buff.extra set value '"\\uF801"'

# text_displayでバフloreを一度まとめる
    execute unless data storage player:ui buff.main[26] run function player:ui/buff/fill
    execute positioned ~ ~1000 ~ run function player:ui/buff/lore

# リセット
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $BuffCount Temporary
    scoreboard players reset $EffectCount Temporary