#> player:trigger/right_click
# 右クリック時の処理

# 魔法の発動を試みる
    execute if predicate player:offhand_magic/_ unless score @s CantCastMagic matches 1.. run function player:magic/trigger

# リセット
    scoreboard players reset @s RightClick