#> player:on_hurt/natural/fall
# 水没ダメージ

# ダメージ設定
    data modify storage lib: Damage.Natural set value "Drown"
    scoreboard players set @s DmgReceived 10

# ダメージの適用
    damage @s 1.0 drown
    function player:on_hurt/_

# リセット
    data remove storage lib: Damage.Natural
    scoreboard players reset @s DmgReceived