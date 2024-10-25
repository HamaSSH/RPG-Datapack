#> player:status/passive/fall_resistance/_
# 落下ダメージ耐性

scoreboard players operation $FallDamageRes Temporary = @s FallDamageRes
scoreboard players operation $FallDamageRes Temporary -= #1000 Constant
scoreboard players operation $FallDamage Temporary *= $FallDamageRes Temporary
scoreboard players operation $FallDamage Temporary /= #1000 Constant
scoreboard players operation $FallDamage Temporary *= #-1 Constant

# リセット
    scoreboard players reset $FallDamageRes Temporary