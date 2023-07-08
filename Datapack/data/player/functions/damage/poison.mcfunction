#> player:damage/poison
# 毒ダメージ

# ダメージ適用
    data modify storage lib: Damage.Type set value "Poison"
    scoreboard players operation @s DmgReceived = @s HP
    scoreboard players add @s DmgReceived 40
    scoreboard players operation @s DmgReceived /= #40 Constant
    function lib:damage/received

# リセット
    scoreboard players reset @s DmgReceived
    data remove storage lib: Damage.Type
    advancement revoke @s only player:damage/poison