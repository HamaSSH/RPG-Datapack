#> player:menu/clicked/3/_
# スロットplayer.crafting.3

# アイテムの返却
    function player:menu/return_item {slot:3}

# リコール中か検知
    execute if entity @s[tag=MenuRecall] run return run function player:menu/clicked/3/cancel_recall
    execute if entity @s[tag=!MenuRecall] run function player:menu/clicked/3/trigger_recall