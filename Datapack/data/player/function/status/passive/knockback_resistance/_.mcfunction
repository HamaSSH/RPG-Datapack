#> player:status/passive/knockback_resistance/_
# ノックバック耐性

# マクロでKBR → knockback_resistance
    execute store result storage player: passive.value float 0.001 run scoreboard players get @s KnockBackRes
    function player:status/passive/knockback_resistance/apply with storage player: passive

# スコアに変化がある時だけfunctionを実行
    scoreboard players operation @s PreviousKBR = @s KnockBackRes

# リセット
    data remove storage player: passive