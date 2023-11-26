#> player:on_death/_
# プレイヤー死亡時の処理

# ステータスの更新
    tag @s add StatusUpdate

# 演出
    title @s title {"text":"You Died!","bold":true,"color":"dark_red"}

# 蘇生
    scoreboard players operation @s HP = @s HPMax
    scoreboard players set @s MP 0