# メニューを閉じたことの検知
  execute as @e[type=chest_minecart,tag=Open] if score @s PlayerID = @p PlayerID run function menu:kill
# 検知用のマーカーをkill
  execute as @e[type=marker,tag=MenuManager] if score @s PlayerID = @p PlayerID run kill @s
# リセット
  tag @s remove Menu
  tag @s remove BrewingMenu
  tag @s remove CookingMenu
  tag @s remove CraftingMenu
  tag @s remove UpgradeMenu
  scoreboard players reset @s menu_timer