#> player:status/cd/reduction
# クールダウン軽減(CDR)の計算

# $Cooldownを(1000-CDR)/1000にする
    scoreboard players set $CDReduction Temporary 1000
    scoreboard players operation $CDReduction Temporary -= @s CDR
    scoreboard players operation $Cooldown Temporary *= $CDReduction Temporary
    scoreboard players operation $Cooldown Temporary /= #1000 Constant

# リセット
    scoreboard players reset $CDReduction