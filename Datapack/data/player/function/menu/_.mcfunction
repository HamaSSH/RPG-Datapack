#> player:menu/_
# プレイヤーメニューの検知

# プレイヤーメニュー用のアイテムをclear
    clear @a structure_block

# メニュークリック検知
    execute unless items entity @s player.crafting.0 structure_void if items entity @s player.crafting.1 structure_void if items entity @s player.crafting.2 structure_void if items entity @s player.crafting.3 structure_void run function player:menu/clicked/0
    execute unless items entity @s player.crafting.1 structure_void if items entity @s player.crafting.0 structure_void if items entity @s player.crafting.2 structure_void if items entity @s player.crafting.3 structure_void run function player:menu/clicked/1
    execute unless items entity @s player.crafting.2 structure_void if items entity @s player.crafting.0 structure_void if items entity @s player.crafting.1 structure_void if items entity @s player.crafting.3 structure_void run function player:menu/clicked/2
    execute unless items entity @s player.crafting.3 structure_void if items entity @s player.crafting.0 structure_void if items entity @s player.crafting.1 structure_void if items entity @s player.crafting.2 structure_void run function player:menu/clicked/3

# インベントリを閉じたときの処理
    execute unless items entity @s player.crafting.0 structure_void unless items entity @s player.crafting.1 structure_void unless items entity @s player.crafting.2 structure_void unless items entity @s player.crafting.3 structure_void run function player:menu/reset