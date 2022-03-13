# 最終的なステータスが一定値以上にならないように補正
    execute if score @s def matches 512.. run scoreboard players set @s def 512
    execute if score @s spd matches 512.. run scoreboard players set @s spd 512
    execute if score @s crt matches 512.. run scoreboard players set @s crt 512
    execute if score @s luk matches 512.. run scoreboard players set @s luk 512
# 最終的なステータスが一定値以下にならないように補正
    execute if score @s hp_max matches ..5 run scoreboard players set @s hp_max 5
    execute if score @s mp_max matches ..0 run scoreboard players set @s mp_max 0
    execute if score @s hp_regen matches ..0 run scoreboard players set @s hp_regen 0
    execute if score @s mp_regen matches ..0 run scoreboard players set @s mp_regen 0