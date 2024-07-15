#> player:on_hurt/natural/poison
# 毒ダメージ

# ダメージ設定
    data modify storage lib: Damage.Natural set value "Poison"
    scoreboard players operation @s DmgReceived = @s HP
    scoreboard players add @s DmgReceived 40
    scoreboard players operation @s DmgReceived /= #40 Constant

# ダメージの適用
    function player:on_hurt/_

# リセット
    data remove storage lib: Damage.Type
    scoreboard players reset @s DmgReceived
    advancement revoke @s only player:on_hurt/natural/poison