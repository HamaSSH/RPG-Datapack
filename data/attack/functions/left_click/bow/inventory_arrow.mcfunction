# 弓の減算
  execute store result score $InventoryArrow Temporary run clear @s arrow{arrow:1b} 1
# 弓矢の数に応じての処理
  execute if score $InventoryArrow Temporary matches 1 run function attack:left_click/bow/arrow/summon
  execute if score $InventoryArrow Temporary matches 0 run playsound resource:custom.weapon.wand master @s ~ ~ ~ 1 1.4
# リセット
  scoreboard players reset $InventoryArrow