#> player:trigger/using_item/bow/_
# 弓を使用中の処理

scoreboard players add @s UsingBow 1

# ため攻撃用スコア加算
    execute if score @s SkillTimer matches 0 run function player:combat/main/bow/skill/charging
    execute if predicate player:hold_weapon/not_bow run scoreboard players reset @s BowSkill

# リセット
    execute if entity @s[advancements={player:trigger/using_item/bow=false}] run function player:trigger/using_item/bow/reset