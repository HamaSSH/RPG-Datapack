#> player:trigger/right_click
# 右クリック時の処理

# 魔法の発動を試みる
    execute if data storage player: Inventory[{Slot:-106b}].tag.Magic run function player:magic/right_click

# リセット
    scoreboard players reset @s RightClick