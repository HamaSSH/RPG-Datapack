#> player:on_death/_
# プレイヤー死亡時の処理

tag @s add Respawn

# ステータスの更新
    tag @s add StatusUpdate

# 死亡メッセージ
    data modify storage player: DeathMessage.Damage set from storage lib: Damage
    function player:on_death/message/_
    data remove storage player: DeathMessage

# 演出
    title @s times 10 30 10
    title @s title {"text":"\uF809\uF804\uE241\uF80B\uF802You\uF822Died!\uF805","bold":true,"color":"dark_red"}
    function player:on_death/lose_gold

# 蘇生
    effect give @s saturation 1 20
    scoreboard players operation @s HP = @s HPMax
    scoreboard players operation @s MP = @s MPMax