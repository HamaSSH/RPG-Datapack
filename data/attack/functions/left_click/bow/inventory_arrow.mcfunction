# 弓の減算
  execute store result score $InventoryArrow Temporary run clear @s arrow{arrow:1b} 1
# 弓矢の数に応じての処理
  execute if score $InventoryArrow Temporary matches 1 run function attack:arrow/summon
  execute if score $InventoryArrow Temporary matches 0 run function attack:arrow/fail
# リセット
  scoreboard players reset $InventoryArrow