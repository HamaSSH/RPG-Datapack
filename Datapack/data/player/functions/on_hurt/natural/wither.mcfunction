#> player:on_hurt/natural/wither
# ウィザーダメージ

# ダメージ設定
    data modify storage lib: Damage.Type set value "Wither"
    scoreboard players operation @s DmgReceived = @s HPMax
    scoreboard players operation @s DmgReceived /= #80 Constant
    scoreboard players add @s DmgReceived 5

# ダメージの適用
    function player:on_hurt/_

# リセット
    scoreboard players reset @s DmgReceived
    data remove storage lib: Damage.Type
    advancement revoke @s only player:on_hurt/natural/wither