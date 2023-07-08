#> player:damage/fall
# 落下ダメージ

# ダメージ適用
    scoreboard players operation $FallDistance Temporary = @s FallDistance
    scoreboard players operation $FallDistance Temporary /= #40 Constant
    scoreboard players operation @s DmgReceived = $FallDistance Temporary
    execute if score @s DmgReceived matches 3.. run function lib:damage/received

# リセット
    scoreboard players reset $FallDistance Temporary
    scoreboard players reset @s FallDistance
    scoreboard players reset @s DmgReceived
    advancement revoke @s only player:damage/fall