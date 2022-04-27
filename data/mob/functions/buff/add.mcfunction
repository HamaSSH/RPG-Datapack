# バフスコアの加算
    execute store result score $Bonus Temporary run data get storage mob:temp Data.buff.value
    execute if data storage mob:temp Data.buff{bonus:"ad"} run scoreboard players operation @s ad_buff += $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"ad"} run scoreboard players operation @s ad += $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"def"} run scoreboard players operation @s def_buff += $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"def"} run scoreboard players operation @s def += $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"spd"} run scoreboard players operation @s spd_buff += $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"spd"} run scoreboard players operation @s spd += $Bonus Temporary
    function mob:buff/update_status
    
    # execute if data storage mob:temp Data.buff{bonus:"hp"} run say add hp_buff
    # execute if data storage mob:temp Data.buff{bonus:"hp_regen"} run say add hp_regen_buff
    # execute if data storage mob:temp Data.buff{bonus:"ad"} run say add ad_buff
    # execute if data storage mob:temp Data.buff{bonus:"def"} run say add def_buff
    # execute if data storage mob:temp Data.buff{bonus:"spd"} run say add spd_buff
    # tellraw @a {"score":{"name": "$Bonus","objective": "Temporary"}}
# リセット
    scoreboard players reset $Bonus