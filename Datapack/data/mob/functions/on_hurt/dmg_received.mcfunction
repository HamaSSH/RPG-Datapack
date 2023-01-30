# HPを減算
    execute if score @s dmg_received matches ..0 run scoreboard players set @s dmg_received 0
    scoreboard players operation @s hp -= @s dmg_received
    function mob:status/hp/display/apply/_
# ダメージ表示
    function combat:damage/display/type
# リセット
    scoreboard players reset @s dmg_received