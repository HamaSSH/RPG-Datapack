#> player:status/luk/_
# LUKに基づくバニラluck属性の設定

# LUKの値がそのままluckに適用
    execute store result storage player:temp luk.value int 1 run scoreboard players get @s LUK
    function player:status/luk/apply.m with storage player:temp luk

# リセット
    data remove storage player:temp luk
