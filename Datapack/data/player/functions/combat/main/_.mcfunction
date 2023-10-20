#> player:combat/main/_
# interactionを武器で攻撃した時の処理

# 与ダメージ計算
    function player:combat/player_attacked/dmg_dealt

# 武器種によって異なる当たり判定呼び出し
    # 短剣
        execute if predicate player:hold_weapon/dagger run function player:combat/main/dagger/_
    # 刀剣
        execute if predicate player:hold_weapon/sword run function player:combat/main/sword/_
    # 槍
        execute if predicate player:hold_weapon/spear run function player:combat/main/spear/_
    # ハンマー
        execute if predicate player:hold_weapon/hammer run function player:combat/main/hammer/_

# リセット
    scoreboard players reset $DmgDealt Temporary