#> player:menu/clicked/1/_
# スロットplayer.crafting.1

# アイテムの返却
    function player:menu/return_item {slot:1}

# ステータス表示
    execute if entity @s[tag=MenuPassive] run return run function player:menu/clicked/1/close_passive
    execute if entity @s[tag=!MenuPassive] run function player:menu/clicked/1/show_passive