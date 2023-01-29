# 最終的なステータスが一定値以下にならないように補正
    execute if score @s hp_max matches ..5 run scoreboard players set @s hp_max 5
    execute if score @s mp_max matches ..0 run scoreboard players set @s mp_max 0
    execute if score @s hp_regen matches ..0 run scoreboard players set @s hp_regen 0
    execute if score @s mp_regen matches ..0 run scoreboard players set @s mp_regen 0
    execute if score @s ad matches ..0 run scoreboard players set @s ad 0
    execute if score @s ap matches ..0 run scoreboard players set @s ap 0
    execute if score @s dex matches ..0 run scoreboard players set @s dex 0
    execute if score @s def matches ..0 run scoreboard players set @s def 0
    execute if score @s crt matches ..0 run scoreboard players set @s crt 0
    execute if score @s luk matches ..0 run scoreboard players set @s luk 0