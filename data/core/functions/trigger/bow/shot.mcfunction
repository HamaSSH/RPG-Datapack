# 弓を撃った人のタグ付け
  tag @s add this
# 撃った弓矢としての処理
  execute unless predicate core:is_sneaking positioned ~ ~1.52 ~ as @e[type=arrow,distance=..0.6] run function attack:main/bow/init
  execute if predicate core:is_sneaking positioned ~ ~1.16 ~ as @e[type=arrow,distance=..0.2] run function attack:main/bow/init
  execute if score @s skill_cd matches 0 if score @s BowCharge matches 40.. run function attack:main/bow/skill/cost
# 矢筒を持っていたらスコア減算
  function attack:main/bow/quiver/check
  execute if entity @s[tag=Quiver] run scoreboard players remove @s Arrow 1
  execute unless entity @s[tag=Quiver] run clear @s arrow{arrow:1b} 1
# もしBowChargeが20以上であれば左クリック用弓矢のチャージを設定する
  execute if entity @s[team=Hunter] if score @s BowCharge matches 20.. run scoreboard players operation @s LCArrow = @s skill_level
  execute if entity @s[team=Hunter] if score @s BowCharge matches 20.. if score @s skill_level matches 3..5 run scoreboard players remove @s LCArrow 1
# Arrowスコアが0になれば矢筒(arrow)→矢筒(carrot_on_a_stick)
  execute if score @s Arrow matches ..0 run function attack:main/bow/quiver/no_arrow
# 溜め攻撃バーのリセット
  function core:trigger/sneak/reset
# リセット
  tag @s remove this
  tag @s remove Quiver
  scoreboard players reset @s bow_shot