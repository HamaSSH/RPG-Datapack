##########
#>
#

# HPを減算
    execute if score @s dmg_received matches ..0 run scoreboard players set @s dmg_received 0
    scoreboard players operation @s hp -= @s dmg_received
    function mob:status/hp/display/apply/_
# ダメージ表示
    function combat:damage/display/type
# ダメージ時の処理
    execute store result storage asset:mob id int 1 run scoreboard players get @s MobID
    execute at @s run function #asset:mob/hurt
    data remove storage asset:mob id

# リセット
    scoreboard players reset @s dmg_received