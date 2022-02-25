### 弓の左クリック検知

# 左クリックしたプレイヤータグ付け
  tag @s add this
# 矢筒を持っているか検知
  function item:quiver/check
# 弓矢の減算
  execute unless score @s Arrow matches 1.. if score @s LCArrow matches 0 run playsound resource:custom.weapon.wand master @s ~ ~ ~ 1 1.4
  execute unless score @s Arrow matches 1.. if score @s LCArrow matches 1.. run function attack:left_click/bow/inventory_arrow
  execute if entity @s[tag=Quiver] if score @s Arrow matches 1.. if score @s LCArrow matches 0 run playsound resource:custom.weapon.wand master @s ~ ~ ~ 1 1.4
  execute if entity @s[tag=Quiver] if score @s Arrow matches 1.. if score @s LCArrow matches 1.. run function attack:left_click/bow/score_arrow
# リセット
  tag @s remove Quiver
  tag @s remove this