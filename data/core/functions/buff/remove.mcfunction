# バフスコアの減算
    execute store result score $Bonus Temporary run data get storage core:temp Data.buff.value
    execute if data storage core:temp Data.buff{bonus:"hp"} run scoreboard players operation @s hp_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"mp"} run scoreboard players operation @s mp_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"hp_regen"} run scoreboard players operation @s hp_regen_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"mp_regen"} run scoreboard players operation @s mp_regen_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"ad"} run scoreboard players operation @s ad_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"ap"} run scoreboard players operation @s ap_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"dex"} run scoreboard players operation @s dex_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"def"} run scoreboard players operation @s def_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"spd"} run scoreboard players operation @s spd_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"crt"} run scoreboard players operation @s crt_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"luk"} run scoreboard players operation @s luk_buff -= $Bonus Temporary
    function player:status/update/_
# リセット
    scoreboard players reset $Bonus