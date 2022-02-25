# 矢筒を持っていたらスコア減算
  function item:quiver/check
  execute if entity @s[tag=Quiver] run scoreboard players remove @s Arrow 1
  execute unless entity @s[tag=Quiver] run clear @s arrow{arrow:1b} 1
  tag @s remove Quiver
# もしBowChargeが20以上であれば左クリック用弓矢のチャージを2にする
  execute if entity @s[team=Hunter] if score @s BowCharge matches 20.. run scoreboard players set @s LCArrow 2
# 溜め攻撃バーのリセット
  function core:trigger/sneak/reset
# リセット
  scoreboard players reset @s bow_shot