#> player:trigger/using_item/bow/_
# 弓を使用中の処理

# ため攻撃用スコア加算
    scoreboard players add @s UsingBow 1
    execute if predicate player:hold_weapon/not_bow run scoreboard players reset @s UsingBow

# リセット
    execute if entity @s[advancements={player:trigger/using_item/bow=false}] run function player:trigger/using_item/bow/reset