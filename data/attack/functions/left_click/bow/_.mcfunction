### 弓の左クリック検知

# 左クリックしたプレイヤータグ付け
  tag @s add this
# 弓矢の減算
  execute if score @s Arrow matches 1.. run function attack:left_click/bow/score_arrow
  execute unless score @s Arrow matches 1.. run function attack:left_click/bow/inventory_arrow
# リセット
  tag @s remove this