# バフスコアの加算
    execute store result score $Bonus Temporary run data get storage core:temp Data.addBuff.value
    execute if data storage core:temp Data.addBuff{bonus:"hp"} run scoreboard players operation @s hp_buff += $Bonus Temporary
    execute if data storage core:temp Data.addBuff{bonus:"mp"} run scoreboard players operation @s mp_buff += $Bonus Temporary
    execute if data storage core:temp Data.addBuff{bonus:"hp_regen"} run scoreboard players operation @s hp_regen_buff += $Bonus Temporary
    execute if data storage core:temp Data.addBuff{bonus:"mp_regen"} run scoreboard players operation @s mp_regen_buff += $Bonus Temporary
    execute if data storage core:temp Data.addBuff{bonus:"ad"} run scoreboard players operation @s ad_buff += $Bonus Temporary
    execute if data storage core:temp Data.addBuff{bonus:"ap"} run scoreboard players operation @s ap_buff += $Bonus Temporary
    execute if data storage core:temp Data.addBuff{bonus:"dex"} run scoreboard players operation @s dex_buff += $Bonus Temporary
    execute if data storage core:temp Data.addBuff{bonus:"def"} run scoreboard players operation @s def_buff += $Bonus Temporary
    execute if data storage core:temp Data.addBuff{bonus:"spd"} run scoreboard players operation @s spd_buff += $Bonus Temporary
    execute if data storage core:temp Data.addBuff{bonus:"crt"} run scoreboard players operation @s crt_buff += $Bonus Temporary
    execute if data storage core:temp Data.addBuff{bonus:"luk"} run scoreboard players operation @s luk_buff += $Bonus Temporary
    execute if data storage core:temp Data.addBuff{bonus:"hp"} run say add hp_buff
    execute if data storage core:temp Data.addBuff{bonus:"mp"} run say add mp_buff
    execute if data storage core:temp Data.addBuff{bonus:"hp_regen"} run say add hp_regen_buff
    execute if data storage core:temp Data.addBuff{bonus:"mp_regen"} run say add mp_regen_buff
    execute if data storage core:temp Data.addBuff{bonus:"ad"} run say add ad_buff
    execute if data storage core:temp Data.addBuff{bonus:"ap"} run say add ap_buff
    execute if data storage core:temp Data.addBuff{bonus:"dex"} run say add dex_buff
    execute if data storage core:temp Data.addBuff{bonus:"def"} run say add def_buff
    execute if data storage core:temp Data.addBuff{bonus:"spd"} run say add spd_buff
    execute if data storage core:temp Data.addBuff{bonus:"crt"} run say add crt_buff
    execute if data storage core:temp Data.addBuff{bonus:"luk"} run say add luk_buff
    function player:status/update/_
# リセット
    data remove storage core:temp Data.addBuff
    scoreboard players reset $Bonus