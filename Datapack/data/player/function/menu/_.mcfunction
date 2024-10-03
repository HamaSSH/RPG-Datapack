#> player:menu/_
# プレイヤーメニューの検知

# メニュークリック検知
    execute unless items entity @s player.crafting.0 structure_void if items entity @s player.crafting.1 structure_void if items entity @s player.crafting.2 structure_void if items entity @s player.crafting.3 structure_void run function player:menu/clicked/0/_
    execute unless items entity @s player.crafting.1 structure_void if items entity @s player.crafting.0 structure_void if items entity @s player.crafting.2 structure_void if items entity @s player.crafting.3 structure_void run function player:menu/clicked/1/_
    execute unless items entity @s player.crafting.2 structure_void if items entity @s player.crafting.0 structure_void if items entity @s player.crafting.1 structure_void if items entity @s player.crafting.3 structure_void run function player:menu/clicked/2/_
    execute unless items entity @s player.crafting.3 structure_void if items entity @s player.crafting.0 structure_void if items entity @s player.crafting.1 structure_void if items entity @s player.crafting.2 structure_void run function player:menu/clicked/3/_

# インベントリを閉じたときの処理
    execute unless items entity @s player.crafting.0 structure_void unless items entity @s player.crafting.1 structure_void unless items entity @s player.crafting.2 structure_void unless items entity @s player.crafting.3 structure_void run function player:menu/reset