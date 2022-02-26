# 撃った弓矢としての処理
# もしBowChargeが40以上であれば溜め攻撃
  execute if score @s BowCharge matches 40.. run say 溜め攻撃
  execute positioned ~ ~1.52 ~ as @e[type=arrow,distance=..0.01] run say h
# 矢筒を持っていたらスコア減算
  function attack:main/bow/quiver/check
  execute if entity @s[tag=Quiver] run scoreboard players remove @s Arrow 1
  execute unless entity @s[tag=Quiver] run clear @s arrow{arrow:1b} 1
  tag @s remove Quiver
# もしBowChargeが20以上であれば左クリック用弓矢のチャージを2にする
  execute if entity @s[team=Hunter] if score @s BowCharge matches 20.. run scoreboard players set @s LCArrow 2
# Arrowスコアが0になれば矢筒(arrow)→矢筒(carrot_on_a_stick)
  execute if score @s Arrow matches ..0 run function attack:main/bow/quiver/no_arrow
# 溜め攻撃バーのリセット
  function core:trigger/sneak/reset
# リセット
  scoreboard players reset @s bow_shot