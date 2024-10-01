#> player:menu/clicked/2/_
# スロットplayer.crafting.2

# 検知用アイテムの更新処理
    function player:menu/update

# ステータス表示
    execute if entity @s[tag=MenuStatus] run return run function player:menu/clicked/2/close_status
    execute if entity @s[tag=!MenuStatus] run function player:menu/clicked/2/show_status