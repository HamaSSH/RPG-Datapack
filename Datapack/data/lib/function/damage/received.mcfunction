#> lib:damage/received
# ダメージを受けた際の処理

# HPを減算
    execute if score @s DmgReceived matches ..0 run scoreboard players set @s DmgReceived 0
    scoreboard players operation @s HP -= @s DmgReceived

# ダメージ表示
    execute if score @s DmgReceived matches 0.. run function lib:damage/display/_

# 無敵時間・戦闘タイマー
    execute unless data storage lib: Damage.Natural run tag @s[type=!player] add HurtTime
    execute unless data storage lib: Damage.Natural run scoreboard players set @s HurtTime 10
    scoreboard players set @s InCombat 200