##########
#>
#

# バフスコアの加算
    execute store result score $Bonus Temporary run data get storage mob:temp Data.buff.value
    execute if data storage mob:temp Data.buff{bonus:"ad"} run scoreboard players operation @s BuffAD += $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"ad"} run scoreboard players operation @s ad += $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"def"} run scoreboard players operation @s BuffDEF += $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"def"} run scoreboard players operation @s def += $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"spd"} run scoreboard players operation @s BuffSPD += $Bonus Temporary
    execute if data storage mob:temp Data.buff{bonus:"spd"} run scoreboard players operation @s spd += $Bonus Temporary

    # execute if data storage mob:temp Data.buff{bonus:"hp"} run say add BuffHP
    # execute if data storage mob:temp Data.buff{bonus:"hp_regen"} run say add BuffHPRegen
    # execute if data storage mob:temp Data.buff{bonus:"ad"} run say add BuffAD
    # execute if data storage mob:temp Data.buff{bonus:"def"} run say add BuffDEF
    # execute if data storage mob:temp Data.buff{bonus:"spd"} run say add BuffSPD
    # tellraw @a {"score":{"name": "$Bonus","objective": "Temporary"}}
# リセット
    scoreboard players reset $Bonus