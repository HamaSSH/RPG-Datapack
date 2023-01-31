##########
#>
#

# メテオライト弓矢の召喚
    execute if data entity @s {PortalCooldown:9} run function combat:main/bow/skill/2/meteor/summon
    execute if data entity @s {PortalCooldown:6} run function combat:main/bow/skill/2/meteor/summon
    execute if data entity @s {PortalCooldown:3} run function combat:main/bow/skill/2/meteor/summon
# 演出(弓溜め)
    particle explosion ~ ~ ~ 0.5 0.5 0.5 1 1 force
# 一定時間後kill
    execute unless block ~ ~ ~ #combat:pass run data modify entity @s PortalCooldown set value 0
    execute if data entity @s {PortalCooldown:0} run function combat:main/bow/arrow/kill