##########
#>
#

# ダメージ表示
    execute store result storage combat:temp Damage int 1 run scoreboard players get @s dmg_received
    scoreboard players operation $DmgReceived Temporary = @s dmg_received
    execute if entity @s[type=#mob:size/short] positioned ~ ~0.9 ~ run function combat:damage/display/summon
    execute if entity @s[type=#mob:size/medium] positioned ~ ~1.3 ~ run function combat:damage/display/summon
    execute if entity @s[type=#mob:size/human] positioned ~ ~1.8 ~ run function combat:damage/display/summon
    execute if entity @s[type=#mob:size/tall] positioned ~ ~2.4 ~ run function combat:damage/display/summon
# リセット
    data remove storage combat:temp Damage
    scoreboard players reset $DmgReceived