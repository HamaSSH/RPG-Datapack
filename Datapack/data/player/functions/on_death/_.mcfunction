#> player:on_death/_
# プレイヤー死亡時の処理

# ステータスの更新
    tag @s add StatusUpdate

# バフの削除
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    execute positioned 0.0 1.0 0.0 as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] if score @s PlayerID = $PlayerID Temporary on passengers run kill @s
    scoreboard players reset $PlayerID Temporary
    function player:buff/reset

# 演出
    title @s title {"text":"You Died!","bold":true,"color":"dark_red"}

# 蘇生
    scoreboard players operation @s HP = @s HPMax
    scoreboard players set @s MP 0