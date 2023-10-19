#> combat:main/_
# interactionを武器で攻撃した時の処理

# 与ダメージ計算
    function combat:player_attacked/dmg_dealt

# 武器種によって異なる当たり判定呼び出し
    # 短剣
        execute if predicate lib:weapon/dagger run function combat:main/dagger/_

# リセット
    scoreboard players reset $DmgDealt Temporary