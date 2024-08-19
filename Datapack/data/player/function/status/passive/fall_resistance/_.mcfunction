#> player:status/passive/fall_resistance/_
# 落下ダメージ耐性

scoreboard players operation $FDR Temporary = @s FDR
scoreboard players operation $FDR Temporary -= #1000 Constant
scoreboard players operation $FallDamage Temporary *= $FDR Temporary
scoreboard players operation $FallDamage Temporary /= #1000 Constant
scoreboard players operation $FallDamage Temporary *= #-1 Constant

# リセット
    scoreboard players reset $FDR Temporary