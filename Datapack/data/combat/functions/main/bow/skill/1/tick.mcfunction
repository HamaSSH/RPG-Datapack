##########
#>
#

# 与ダメージ計算
    scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
    scoreboard players operation $DmgDealt Temporary *= #4 Constant
    scoreboard players add $DmgDealt Temporary 10
# ノックバック
    scoreboard players set $XPower Temporary 100
    scoreboard players set $YPower Temporary 300
# 当たり判定
    tag @s add this
    execute positioned ~ ~-1.18 ~ as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,distance=..2] run function combat:main/bow/skill/hit
# 演出(弓溜め1)
    function combat:main/bow/skill/1/effect/_
# 着弾したらkill
    execute unless block ~ ~ ~ #combat:pass run data modify entity @s PortalCooldown set value 0
    execute if data entity @s {PortalCooldown:0} run function combat:main/bow/arrow/kill
# リセット
    scoreboard players reset $DmgDealt
    scoreboard players reset $XPower
    scoreboard players reset $YPower
    tag @s remove this