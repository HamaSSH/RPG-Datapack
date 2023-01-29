### 攻撃処理関連の#tick

# 攻撃の#tick
    execute as @a at @s if score @s skill_cd matches 1.. run function combat:main/tick
    execute as @a if score @s ElementAttack matches 1.. run scoreboard players remove @s ElementAttack 1
    execute as @a if score @s FireAttack matches 1.. run scoreboard players remove @s FireAttack 1
    execute as @a if score @s WaterAttack matches 1.. run scoreboard players remove @s WaterAttack 1
    execute as @a if score @s ThunderAttack matches 1.. run scoreboard players remove @s ThunderAttack 1
    execute as @a if score @s EarthAttack matches 1.. run scoreboard players remove @s EarthAttack 1
    execute as @a if score @s WindAttack matches 1.. run scoreboard players remove @s WindAttack 1
# 杖の通常攻撃弾の#tick
    execute as @e[type=area_effect_cloud,tag=Wand] at @s run function combat:main/wand/tick
# 弓矢の弾の#tick
    execute as @e[type=arrow] at @s run function combat:main/bow/arrow/tick/_
# 弓長押し検知チェック用のスコア加算
    execute as @a if entity @s[tag=BowCharging] run scoreboard players add @s IfBowCharge 1
# 時間経過でkillするエンティティ
    execute as @e[tag=LeftClick] if data entity @s {PortalCooldown:0} run function combat:main/kill
    execute as @e[type=item,tag=DmgDisplay] if data entity @s {PortalCooldown:0} run kill @s
    execute as @e[type=armor_stand,tag=GoldDisplay] if data entity @s {PortalCooldown:0} run kill @s
    execute as @e[type=armor_stand,tag=XPDisplay] if data entity @s {PortalCooldown:0} run kill @s