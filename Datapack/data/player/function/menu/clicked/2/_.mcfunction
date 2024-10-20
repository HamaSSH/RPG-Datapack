#> player:menu/clicked/2/_
# スロットplayer.crafting.2

playsound ui.button.click master @s ~ ~ ~ 0.1 0.9

# アイテムの返却
    function player:menu/return_item {slot:2}

# 検知用アイテムの更新処理
    function player:menu/update