# HPを減算
    execute if score @s dmg_received matches ..0 run scoreboard players set @s dmg_received 0
    scoreboard players operation @s hp -= @s dmg_received
    function mob:status/hp/display/apply/_
# ダメージ表示
    function attack:damage/display/type
# リセット
    # tellraw @a {"score":{"name":"@s","objective":"dmg_received"}}
    scoreboard players reset @s dmg_received