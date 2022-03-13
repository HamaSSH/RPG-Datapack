# HPを減算
    scoreboard players operation @s hp -= @s dmg_received
# ダメージ表示
    function attack:damage/display/type
# actionbar点滅
    scoreboard players set @s HurtTime 10
# 戦闘タイマー
    scoreboard players set @s InCombat 200
# リセット
    scoreboard players reset @s dmg_received