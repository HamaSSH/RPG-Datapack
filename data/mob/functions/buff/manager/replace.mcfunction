# バフの種類ごとの置き換え
    execute if data storage mob:temp Data.buff{bonus:"ad"} if data storage mob:temp Data.oldBuff{bonus:"ad"} run scoreboard players operation @e[tag=Enemy,tag=this,limit=1] ad_buff -= $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"ad"} if data storage mob:temp Data.oldBuff{bonus:"ad"} run scoreboard players operation @e[tag=Enemy,tag=this,limit=1] ad -= $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"def"} if data storage mob:temp Data.oldBuff{bonus:"def"} run scoreboard players operation @e[tag=Enemy,tag=this,limit=1] def_buff -= $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"def"} if data storage mob:temp Data.oldBuff{bonus:"def"} run scoreboard players operation @e[tag=Enemy,tag=this,limit=1] def -= $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"spd"} if data storage mob:temp Data.oldBuff{bonus:"spd"} run scoreboard players operation @e[tag=Enemy,tag=this,limit=1] spd_buff -= $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"spd"} if data storage mob:temp Data.oldBuff{bonus:"spd"} run scoreboard players operation @e[tag=Enemy,tag=this,limit=1] spd -= $Bonus Temporary
    execute if data storage mob:temp Data.buff{source:"paralize"} run attribute @s generic.movement_speed modifier remove 1-0-0-1-A
# 仕事を終えるのでkill
    kill @s