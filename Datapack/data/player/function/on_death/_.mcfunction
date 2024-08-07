#> player:on_death/_
# プレイヤー死亡時の処理

# ステータスの更新
    tag @s add StatusUpdate

# バフの削除
    function player:buff/reset

# 実績チャレンジ失敗
    tag @s remove 3.4.NoDamage
    scoreboard players reset @s 3.5.DungeonTimer

# 演出
    execute in overworld positioned as 83a-51-1-0-2 run tp @s ~ ~ ~ -90 0
    title @s title {"text":"You Died!","bold":true,"color":"dark_red"}
    function player:on_death/lose_gold

# 蘇生
    effect give @s saturation 1 20
    scoreboard players operation @s HP = @s HPMax
    scoreboard players operation @s MP = @s MPMax
    scoreboard players set @s SkillTimer 0
    function player:magic/element/reset