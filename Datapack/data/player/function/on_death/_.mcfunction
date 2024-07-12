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
    execute in overworld positioned as 83a-51-1-0-2 run tp @s ~ ~ ~ -90 0
    # function player:on_death/lose_gold
    title @s title {"text":"You Died!","bold":true,"color":"dark_red"}

# 蘇生
    effect give @s saturation 1 20
    scoreboard players operation @s HP = @s HPMax
    scoreboard players operation @s MP = @s MPMax
    scoreboard players set @s SkillTimer 0
    scoreboard players set @s ElementTimer 0