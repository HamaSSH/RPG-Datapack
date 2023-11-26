#> player:combat/main/_
# interactionを武器で攻撃した時の処理

# 武器種によって異なる当たり判定呼び出し
    # 短剣
        execute if predicate player:charged/dagger unless score @s SneakTime matches 30.. run function player:combat/main/dagger/charged
        execute if predicate player:uncharged/dagger unless score @s SneakTime matches 30.. run function player:combat/main/dagger/uncharged
        execute if predicate player:hold_weapon/dagger if score @s SneakTime matches 30.. run function player:combat/main/dagger/skill/init
    # 刀剣
        execute if predicate player:charged/sword unless score @s SneakTime matches 30.. run function player:combat/main/sword/charged
        execute if predicate player:uncharged/sword unless score @s SneakTime matches 30.. run function player:combat/main/sword/uncharged
        execute if predicate player:hold_weapon/sword if score @s SneakTime matches 30.. run function player:combat/main/sword/skill/init
    # 槍
        execute if predicate player:charged/spear unless score @s SneakTime matches 30.. run function player:combat/main/spear/charged
        execute if predicate player:uncharged/spear unless score @s SneakTime matches 30.. run function player:combat/main/spear/uncharged
        execute if predicate player:hold_weapon/spear if score @s SneakTime matches 30.. run function player:combat/main/spear/skill/init
    # ハンマー
        execute if predicate player:charged/hammer unless score @s SneakTime matches 30.. run function player:combat/main/hammer/charged
        execute if predicate player:uncharged/hammer unless score @s SneakTime matches 30.. run function player:combat/main/hammer/uncharged
        execute if predicate player:hold_weapon/hammer if score @s SneakTime matches 30.. run function player:combat/main/hammer/skill/init
    # 杖
        execute if predicate player:charged/wand unless score @s SneakTime matches 30.. run function player:combat/main/wand/charged
        execute if predicate player:uncharged/wand unless score @s SneakTime matches 30.. run function player:combat/main/wand/uncharged
        execute if predicate player:hold_weapon/wand if score @s SneakTime matches 30.. run function player:combat/main/wand/skill/init

# リセット
    scoreboard players reset $DmgDealt Temporary
    scoreboard players reset @s SneakTime