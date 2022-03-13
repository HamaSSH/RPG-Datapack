# 落下ダメージ
    scoreboard players operation @s dmg_received = @s fall_distance
    scoreboard players operation @s dmg_received *= #6 Constant
    function mob:on_hurt/dmg_received
# 死亡処理
    execute if score @s hp matches ..0 run function mob:on_death/_
# リセット
    scoreboard players reset @s fall_distance