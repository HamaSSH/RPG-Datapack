# storage DataにプレイヤーのInventoryを代入
  data modify storage item:temp Data set from entity @s Inventory
# 矢筒をもっているか検知
  execute if data storage item:temp Data[{Slot:9b}].tag{quiver:1b} run tag @s add Quiver
  execute if data storage item:temp Data[{Slot:10b}].tag{quiver:1b} run tag @s add Quiver
  execute if data storage item:temp Data[{Slot:11b}].tag{quiver:1b} run tag @s add Quiver
# リセット
  data remove storage item:temp Data