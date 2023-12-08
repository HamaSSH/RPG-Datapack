#> player:trigger/right_click
# 右クリック時の処理

# 魔法の発動を試みる
    execute if predicate player:offhand_magic/_ unless predicate player:hold_weapon/bow/mainhand run function player:magic/trigger

# リセット
    scoreboard players reset @s RightClick