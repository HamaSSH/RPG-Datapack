# バフスコアの減算
    execute store result score $Bonus Temporary run data get storage player:temp Data.buff.value
    execute if data storage player:temp Data.buff{bonus:"hp"} run scoreboard players operation @s hp_buff -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"mp"} run scoreboard players operation @s mp_buff -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"hp_regen"} run scoreboard players operation @s hp_regen_buff -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"mp_regen"} run scoreboard players operation @s mp_regen_buff -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"ad"} run scoreboard players operation @s ad_buff -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"ap"} run scoreboard players operation @s ap_buff -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"dex"} run scoreboard players operation @s dex_buff -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"def"} run scoreboard players operation @s def_buff -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"spd"} run scoreboard players operation @s spd_buff -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"crt"} run scoreboard players operation @s crt_buff -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"luk"} run scoreboard players operation @s luk_buff -= $Bonus Temporary
    function player:status/update/_

    # execute if data storage player:temp Data.buff{bonus:"hp"} run say remove hp_buff
    # execute if data storage player:temp Data.buff{bonus:"mp"} run say remove mp_buff
    # execute if data storage player:temp Data.buff{bonus:"hp_regen"} run say remove hp_regen_buff
    # execute if data storage player:temp Data.buff{bonus:"mp_regen"} run say remove mp_regen_buff
    # execute if data storage player:temp Data.buff{bonus:"ad"} run say remove ad_buff
    # execute if data storage player:temp Data.buff{bonus:"ap"} run say remove ap_buff
    # execute if data storage player:temp Data.buff{bonus:"dex"} run say remove dex_buff
    # execute if data storage player:temp Data.buff{bonus:"def"} run say remove def_buff
    # execute if data storage player:temp Data.buff{bonus:"spd"} run say remove spd_buff
    # execute if data storage player:temp Data.buff{bonus:"crt"} run say remove crt_buff
    # execute if data storage player:temp Data.buff{bonus:"luk"} run say remove luk_buff
    # tellraw @s ["-",{"score":{"name": "$Bonus","objective": "Temporary"}}]
# リセット
    scoreboard players reset $Bonus