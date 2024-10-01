#> player:menu/clicked/0/_
# スロットplayer.crafting.0

# ステータス表示
    execute if entity @s[tag=MenuStatus] run return run function player:menu/clicked/0/close_status
    execute if entity @s[tag=!MenuStatus] run function player:menu/clicked/0/show_status