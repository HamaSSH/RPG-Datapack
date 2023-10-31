#> player:combat/main/_
# interactionを武器で攻撃した時の処理

# 武器種によって異なる当たり判定呼び出し
    # 短剣
        execute if predicate player:hold_weapon/dagger run function player:combat/main/dagger/_
    # 刀剣
        execute if predicate player:hold_weapon/sword unless score @s SneakTime matches 30.. run function player:combat/main/sword/_
        execute if predicate player:hold_weapon/sword if score @s SneakTime matches 30.. run function player:combat/main/sword/skill/init
    # 槍
        execute if predicate player:hold_weapon/spear unless score @s SneakTime matches 30.. run function player:combat/main/spear/_
        execute if predicate player:hold_weapon/spear if score @s SneakTime matches 30.. run function player:combat/main/spear/skill/init
    # ハンマー
        execute if predicate player:hold_weapon/hammer run function player:combat/main/hammer/_

# リセット
    scoreboard players reset $DmgDealt Temporary
    scoreboard players reset @s SneakTime