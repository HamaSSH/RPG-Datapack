##########
#>
#

# ダメージ表示
    execute store result storage combat:temp Damage int 1 run scoreboard players get @s dmg_received
    scoreboard players operation $DmgReceived Temporary = @s dmg_received
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~0.2 ~ run function combat:damage/display/summon
# リセット
    data remove storage combat:temp Damage
    scoreboard players reset $DmgReceived