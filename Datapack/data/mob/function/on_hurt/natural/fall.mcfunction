#> mob:on_hurt/natural/fall
# 落下ダメージ

# ダメージ設定
    data modify storage lib: Damage.Type set value "Melee"
    scoreboard players operation @s DmgReceived = @s FallDistance
    scoreboard players operation @s DmgReceived *= #8 Constant

# ダメージを受けた際の処理
    function mob:on_hurt/_

# リセット
    data remove storage lib: Damage.Type
    scoreboard players reset @s DmgReceived
    scoreboard players reset @s FallDistance