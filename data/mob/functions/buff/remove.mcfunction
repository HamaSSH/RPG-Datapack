# バフスコアの減算
    execute store result score $Bonus Temporary run data get storage mob:temp Data.buff.value
    execute if data storage mob:temp Data.buff{bonus:"ad"} run scoreboard players operation @s ad_buff -= $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"ad"} run scoreboard players operation @s ad -= $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"def"} run scoreboard players operation @s def_buff -= $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"def"} run scoreboard players operation @s def -= $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"spd"} run scoreboard players operation @s spd_buff -= $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"spd"} run scoreboard players operation @s spd -= $Bonus Temporary
    execute if data storage mob:temp Data.buff{source:"paralize"} run attribute @s generic.movement_speed modifier remove 1-0-0-1-A

    # execute if data storage mob:temp Data.buff{bonus:"hp"} run say remove hp_buff
    # execute if data storage mob:temp Data.buff{bonus:"hp_regen"} run say remove hp_regen_buff
    # execute if data storage mob:temp Data.buff{bonus:"ad"} run say remove ad_buff
    # execute if data storage mob:temp Data.buff{bonus:"def"} run say remove def_buff
    # execute if data storage mob:temp Data.buff{bonus:"spd"} run say remove spd_buff
    # tellraw @a ["-",{"score":{"name": "$Bonus","objective": "Temporary"}}]
# リセット
    scoreboard players reset $Bonus