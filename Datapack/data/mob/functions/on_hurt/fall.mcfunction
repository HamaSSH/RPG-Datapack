#> mob:on_hurt/fall
# 落下ダメージ

# ダメージ計算
    scoreboard players operation @s DmgReceived = @s FallDistance
    scoreboard players operation @s DmgReceived *= #8 Constant

# ダメージを受けた際の処理
    function mob:on_hurt/_

# リセット
    scoreboard players reset @s DmgReceived
    scoreboard players reset @s FallDistance