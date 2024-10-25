#> player:on_hurt/natural/fall
# 落下ダメージ

# ダメージ設定
    data modify storage lib: Damage.Type set value "Melee"
    data modify storage lib: Damage.Natural set value "Fall"
    scoreboard players operation $FallDamage Temporary = @s FallDistance
    scoreboard players operation $FallDamage Temporary /= #40 Constant
    # 落下ダメージ耐性
        execute if score @s FallDamageRes matches 1.. run function player:status/passive/fall_resistance/_
    scoreboard players operation @s DmgReceived = $FallDamage Temporary

# ダメージの適用
    function player:on_hurt/_

# リセット
    data remove storage lib: Damage.Type
    data remove storage lib: Damage.Natural
    scoreboard players reset $FallDamage Temporary
    scoreboard players reset @s FallDistance
    scoreboard players reset @s DmgReceived
    advancement revoke @s only player:on_hurt/natural/fall