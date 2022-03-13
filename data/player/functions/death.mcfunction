title @s title {"text":"you died.","bold":true,"color":"dark_red"}
# ステータス値整理
    function player:status/update/_
    scoreboard players operation @s hp = @s hp_max
    scoreboard players operation @s mp = @s mp_max