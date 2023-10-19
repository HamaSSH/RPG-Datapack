#> combat:main/hit
# 武器からの攻撃がヒットした敵に対しての処理

# ダメージ処理
    function combat:player_attacked/detected
    damage @s 0.0 generic

# ノックバック
    execute rotated ~ 45 run function lib:motion/knockback

# リセット
    tag @s remove Hit