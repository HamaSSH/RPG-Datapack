##########
#>
#

# バフスコアの加算
    execute store result score $Bonus Temporary run data get storage player:temp Data.buff.value
    execute if data storage player:temp Data.buff{bonus:"hp"} run scoreboard players operation @s BuffHP += $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"mp"} run scoreboard players operation @s BuffMP += $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"hp_regen"} run scoreboard players operation @s BuffHPRegen += $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"mp_regen"} run scoreboard players operation @s BuffMPRegen += $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"ad"} run scoreboard players operation @s BuffAD += $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"ap"} run scoreboard players operation @s BuffAP += $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"dex"} run scoreboard players operation @s BuffDEX += $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"def"} run scoreboard players operation @s BuffDEF += $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"spd"} run scoreboard players operation @s BuffSPD += $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"crt"} run scoreboard players operation @s BuffCRT += $Bonus Temporary
    execute if data storage player:temp Data.buff{bonus:"luk"} run scoreboard players operation @s BuffLUK += $Bonus Temporary
    function player:status/update/_

    # execute if data storage player:temp Data.buff{bonus:"hp"} run say add BuffHP
    # execute if data storage player:temp Data.buff{bonus:"mp"} run say add BuffMP
    # execute if data storage player:temp Data.buff{bonus:"hp_regen"} run say add BuffHPRegen
    # execute if data storage player:temp Data.buff{bonus:"mp_regen"} run say add BuffMPRegen
    # execute if data storage player:temp Data.buff{bonus:"ad"} run say add BuffAD
    # execute if data storage player:temp Data.buff{bonus:"ap"} run say add BuffAP
    # execute if data storage player:temp Data.buff{bonus:"dex"} run say add BuffDEX
    # execute if data storage player:temp Data.buff{bonus:"def"} run say add BuffDEF
    # execute if data storage player:temp Data.buff{bonus:"spd"} run say add BuffSPD
    # execute if data storage player:temp Data.buff{bonus:"crt"} run say add BuffCRT
    # execute if data storage player:temp Data.buff{bonus:"luk"} run say add BuffLUK
    # tellraw @s {"score":{"name": "$Bonus","objective": "Temporary"}}
# リセット
    scoreboard players reset $Bonus