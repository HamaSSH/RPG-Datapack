#> player:status/cd/reduction
# クールダウン軽減(CDReduction)の計算

# $Cooldownを(1000-CDReduction)/1000にする
    scoreboard players set $CDReduction Temporary 1000
    scoreboard players operation $CDReduction Temporary -= @s CDReduction
    scoreboard players operation $Cooldown Temporary *= $CDReduction Temporary
    scoreboard players operation $Cooldown Temporary /= #1000 Constant

# リセット
    scoreboard players reset $CDReduction