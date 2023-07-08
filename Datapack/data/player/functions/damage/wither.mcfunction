#> player:damage/wither
# ウィザーダメージ

# ダメージ適用
    data modify storage lib: Damage.Type set value "Wither"
    scoreboard players operation @s DmgReceived = @s HPMax
    scoreboard players operation @s DmgReceived /= #80 Constant
    scoreboard players add @s DmgReceived 5
    function lib:damage/received

# リセット
    scoreboard players reset @s DmgReceived
    data remove storage lib: Damage.Type
    advancement revoke @s only player:damage/wither