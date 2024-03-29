#> player:on_hurt/natural/fall
# 落下ダメージ

# ダメージ設定
    data modify storage lib: Damage.Type set value "Melee"
    scoreboard players operation $FallDistance Temporary = @s FallDistance
    scoreboard players operation $FallDistance Temporary /= #40 Constant
    scoreboard players operation @s DmgReceived = $FallDistance Temporary

# ダメージの適用
    execute if score @s DmgReceived matches 3.. run function player:on_hurt/_

# リセット
    data remove storage lib: Damage.Type
    scoreboard players reset $FallDistance Temporary
    scoreboard players reset @s FallDistance
    scoreboard players reset @s DmgReceived
    advancement revoke @s only player:on_hurt/natural/fall