# クールダウン軽減 (CDR)
    scoreboard players set $CDReduction Temporary 1000
    scoreboard players operation $CDReduction Temporary -= @s cdr
    scoreboard players operation $Cooldown Temporary *= $CDReduction Temporary
    scoreboard players operation $Cooldown Temporary /= #1000 Constant
# リセット
    scoreboard players reset $CDReduction