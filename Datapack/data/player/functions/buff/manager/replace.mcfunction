##########
#>
#

# バフの種類ごとの置き換え
    execute if data storage player:temp Data.buff{bonus:"hp"} if data storage player:temp Data.oldBuff{bonus:"hp"} run scoreboard players operation @a[tag=this,limit=1] BuffHP -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"mp"} if data storage player:temp Data.oldBuff{bonus:"mp"} run scoreboard players operation @a[tag=this,limit=1] BuffMP -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"hp_regen"} if data storage player:temp Data.oldBuff{bonus:"hp_regen"} run scoreboard players operation @a[tag=this,limit=1] BuffHPRegen -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"mp_regen"} if data storage player:temp Data.oldBuff{bonus:"mp_regen"} run scoreboard players operation @a[tag=this,limit=1] BuffMPRegen -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"ad"} if data storage player:temp Data.oldBuff{bonus:"ad"} run scoreboard players operation @a[tag=this,limit=1] BuffAD -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"ap"} if data storage player:temp Data.oldBuff{bonus:"ap"} run scoreboard players operation @a[tag=this,limit=1] BuffAP -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"dex"} if data storage player:temp Data.oldBuff{bonus:"dex"} run scoreboard players operation @a[tag=this,limit=1] BuffDEX -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"def"} if data storage player:temp Data.oldBuff{bonus:"def"} run scoreboard players operation @a[tag=this,limit=1] BuffDEF -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"spd"} if data storage player:temp Data.oldBuff{bonus:"spd"} run scoreboard players operation @a[tag=this,limit=1] BuffSPD -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"crt"} if data storage player:temp Data.oldBuff{bonus:"crt"} run scoreboard players operation @a[tag=this,limit=1] BuffCRT -= $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"luk"} if data storage player:temp Data.oldBuff{bonus:"luk"} run scoreboard players operation @a[tag=this,limit=1] BuffLUK -= $Bonus Temporary
    execute as @a[tag=this,limit=1] run function player:status/update/_
# 仕事を終えるのでkill
    kill @s