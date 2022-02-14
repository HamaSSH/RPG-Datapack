### 攻撃処理関連の#tick

# 攻撃の#tick
  execute as @a at @s if score @s skill_cd matches 1.. run function attack:left_click/tick
  execute as @a if score @s ElementAttack matches 1.. run scoreboard players remove @s ElementAttack 1
  execute as @a if score @s FireAttack matches 1.. run scoreboard players remove @s FireAttack 1
  execute as @a if score @s WaterAttack matches 1.. run scoreboard players remove @s WaterAttack 1
  execute as @a if score @s ThunderAttack matches 1.. run scoreboard players remove @s ThunderAttack 1
  execute as @a if score @s EarthAttack matches 1.. run scoreboard players remove @s EarthAttack 1
  execute as @a if score @s WindAttack matches 1.. run scoreboard players remove @s WindAttack 1
# 杖の通常攻撃弾の#tick
  execute as @e[type=area_effect_cloud,tag=Wand] at @s run function attack:left_click/wand/tick
# 弓矢は敵を貫通
  execute as @e[type=arrow] run data modify entity @s PierceLevel set value 5b
  execute as @e[type=arrow,tag=!ArrowLand] if data entity @s {inGround:1b} run function attack:arrow/land
# 時間経過でkillするエンティティ
  execute as @e[type=magma_cube,tag=LeftClick] if data entity @s {PortalCooldown:0} run function attack:left_click/kill
  execute as @e[type=item,tag=DmgDisplay] if data entity @s {PortalCooldown:0} run kill @s
  execute as @e[type=armor_stand,tag=GoldDisplay] if data entity @s {PortalCooldown:0} run kill @s
  execute as @e[type=armor_stand,tag=XPDisplay] if data entity @s {PortalCooldown:0} run kill @s
  execute as @e[type=arrow,tag=ArrowLand] at @s if data entity @s {inGround:1b,PortalCooldown:0} run function attack:arrow/kill
# チェストに視点合わせたらスライム召喚しない