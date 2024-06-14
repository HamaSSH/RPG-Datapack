#> player:combat/main/hit
# 武器からの攻撃がヒットした敵に対しての処理

# ダメージ処理
    function player:combat/player_attacked/detected
    damage @s 0.0 generic

# リセット
    tag @s remove Hit