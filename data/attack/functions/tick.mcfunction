### 攻撃処理関連の#tick

# 時間経過でkillするエンティティ
  execute as @e[type=magma_cube,tag=LeftClick] if data entity @s {PortalCooldown:0} run function attack:left_click/kill
  execute as @e[type=item,tag=DmgDisplay] if data entity @s {PortalCooldown:0} run kill @s
  execute as @e[type=armor_stand,tag=GoldDisplay] if data entity @s {PortalCooldown:0} run kill @s
  execute as @e[type=armor_stand,tag=XPDisplay] if data entity @s {PortalCooldown:0} run kill @s
# 溜め攻撃の#tick
  execute as @a at @s if score @s skill_cd matches 1.. run function attack:left_click/tick
# 杖の通常攻撃弾の#tick
  execute as @e[type=area_effect_cloud,tag=Wand] at @s run function attack:left_click/wand/tick
# 弓矢は敵を貫通
  execute as @e[type=arrow] run data modify entity @s PierceLevel set value 5b
# チェストに視点合わせたらスライム召喚しない