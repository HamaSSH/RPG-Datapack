#> lib:damage/display/_
# ダメージ表示

# 表示用に一時score化
    scoreboard players operation $DmgReceived Temporary = @s DmgReceived

# ダメージ表示
    data modify storage lib:temp Damage.name set value [{text:"-"},{score:{name:"$DmgReceived",objective:"Temporary"}}]
    execute if data storage lib:temp Damage{Natural:"Fire"} run data modify storage lib:temp Damage.name[0].color set value "#F4B566"
    execute if data storage lib:temp Damage{Natural:"Poison"} run data modify storage lib:temp Damage.name[0].color set value "#AAE675"
    execute if data storage lib:temp Damage{Critical:1b} run data modify storage lib:temp Damage.name[0].color set value "#FC806B"
    execute if data storage lib:temp Damage{Critical:1b} run data modify storage lib:temp Damage.name[0].bold set value true
    execute if score $DmgReceived Temporary matches 0 run data modify storage lib:temp Damage.name[0].color set value "#999999"
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~0.2 ~ run function lib:damage/display/summon

# リセット
    data remove storage lib:temp Damage.name
    scoreboard players reset $DmgReceived Temporary
