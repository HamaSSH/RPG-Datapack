# バフの種類ごとの置き換え
    execute if data storage core:temp Data.buff{bonus:"hp"} if data storage core:temp Data.oldBuff{bonus:"hp"} run scoreboard players operation @a[tag=this,limit=1] hp_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"mp"} if data storage core:temp Data.oldBuff{bonus:"mp"} run scoreboard players operation @a[tag=this,limit=1] mp_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"hp_regen"} if data storage core:temp Data.oldBuff{bonus:"hp_regen"} run scoreboard players operation @a[tag=this,limit=1] hp_regen_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"mp_regen"} if data storage core:temp Data.oldBuff{bonus:"mp_regen"} run scoreboard players operation @a[tag=this,limit=1] mp_regen_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"ad"} if data storage core:temp Data.oldBuff{bonus:"ad"} run scoreboard players operation @a[tag=this,limit=1] ad_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"ap"} if data storage core:temp Data.oldBuff{bonus:"ap"} run scoreboard players operation @a[tag=this,limit=1] ap_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"dex"} if data storage core:temp Data.oldBuff{bonus:"dex"} run scoreboard players operation @a[tag=this,limit=1] dex_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"def"} if data storage core:temp Data.oldBuff{bonus:"def"} run scoreboard players operation @a[tag=this,limit=1] def_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"spd"} if data storage core:temp Data.oldBuff{bonus:"spd"} run scoreboard players operation @a[tag=this,limit=1] spd_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"crt"} if data storage core:temp Data.oldBuff{bonus:"crt"} run scoreboard players operation @a[tag=this,limit=1] crt_buff -= $Bonus Temporary
    execute if data storage core:temp Data.buff{bonus:"luk"} if data storage core:temp Data.oldBuff{bonus:"luk"} run scoreboard players operation @a[tag=this,limit=1] luk_buff -= $Bonus Temporary
    execute as @a[tag=this,limit=1] run function player:status/update/_
# 仕事を終えるのでkill
    kill @s