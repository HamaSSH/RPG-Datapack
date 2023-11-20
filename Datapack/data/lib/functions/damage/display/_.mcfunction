#> lib:damage/display/_
# ダメージ表示

# ダメージのデータを取得
    execute store result storage lib: Damage.Value int 1 run scoreboard players get @s DmgReceived
    scoreboard players operation $DmgReceived Temporary = @s DmgReceived

# ダメージの色
    data modify storage lib: Damage.Color set value '{"text":"","color":"white"}'
    execute if data storage lib: Damage{Type:"Fire"} run data modify storage lib: Damage.Color set value '{"text":"","color":"#F4B566"}'
    execute if data storage lib: Damage{Type:"Poison"} run data modify storage lib: Damage.Color set value '{"text":"","color":"#AAE675"}'
    execute if data storage lib: Damage{Type:"Wither"} run data modify storage lib: Damage.Color set value '{"text":"","color":"#CAA8F6"}'
    execute if data storage lib: Damage{Critical:1b} run data modify storage lib: Damage.Color set value '{"text":"","color":"#FC806B","bold":true}'
    execute if score $DmgReceived Temporary matches 0 run data modify storage lib: Damage.Color set value '{"text":"","color":"#999999"}'
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~0.2 ~ run function lib:damage/display/summon

# リセット
    data remove storage lib: Damage
    scoreboard players reset $DmgReceived Temporary