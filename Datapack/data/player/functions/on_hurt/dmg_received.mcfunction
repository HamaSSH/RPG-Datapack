##########
#>
#

# HPを減算
    execute if score @s dmg_received matches ..0 run scoreboard players set @s dmg_received 0
    scoreboard players operation @s hp -= @s dmg_received
# ダメージ表示
    function combat:damage/display/type
# actionbar点滅
    scoreboard players set @s HurtTime 10
# 戦闘タイマー
    scoreboard players set @s InCombat 200
# リセット
    scoreboard players reset @s dmg_received