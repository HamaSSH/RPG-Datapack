#> player:on_death/_
# プレイヤー死亡時の処理

# ステータスの更新
    tag @s add StatusUpdate

# バフの削除
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    execute positioned 0.0 1.0 0.0 as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] if score @s PlayerID = $PlayerID Temporary on passengers run kill @s
    scoreboard players reset $PlayerID Temporary
    function player:buff/reset

# ダンジョンで死亡した場合
    tag @s remove InDungeon

# 演出
    tp @s 621 134 -770 -90 0
    # function player:on_death/lose_gold
    title @s title {"text":"You Died!","bold":true,"color":"dark_red"}

# 蘇生
    scoreboard players operation @s HP = @s HPMax
    scoreboard players operation @s MP = @s MPMax
    scoreboard players set @s SkillTimer 0
    scoreboard players set @s ElementTimer 0