#> mob:on_hurt/natural/poison
# 毒ダメージの適用

# ダメージ設定
    data modify storage lib: Damage.Natural set value "Poison"
    scoreboard players operation @s DmgReceived = @s HP
    scoreboard players add @s DmgReceived 40
    scoreboard players operation @s DmgReceived /= #40 Constant

# ダメージを受けた際の処理
    function mob:on_hurt/_

# リセット
    data remove storage lib: Damage.Natural
    scoreboard players reset @s DmgReceived