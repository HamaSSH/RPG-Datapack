# もし矢筒を装備していたら弓矢を収納
  function item:quiver/check
  execute if entity @s[tag=Quiver] run function item:quiver/add_score
  execute unless entity @s[tag=Quiver] run function item:quiver/deequip
  tag @s remove Quiver
# リセット
  advancement revoke @s only item:quiver
  advancement revoke @s only item:arrow