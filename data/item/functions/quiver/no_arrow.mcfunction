# 左上3スロットの矢筒(arrow)→矢筒(carrot_on_a_stick)
  data modify storage item:temp Inventory set from entity @s Inventory
  data modify storage item:temp Quiver append from storage item:temp Inventory[{tag:{quiver:1b}}]
  execute if data storage item:temp Quiver[{Slot:9b,id:"minecraft:arrow"}] run loot replace entity @s inventory.0 loot item:8700/carrot_on_a_stick
  execute if data storage item:temp Quiver[{Slot:10b,id:"minecraft:arrow"}] run loot replace entity @s inventory.1 loot item:8700/carrot_on_a_stick
  execute if data storage item:temp Quiver[{Slot:11b,id:"minecraft:arrow"}] run loot replace entity @s inventory.2 loot item:8700/carrot_on_a_stick
# リセット
  data remove storage item:temp Inventory
  data remove storage item:temp Quiver