##########
#>
#

# クリティカル時のダメージ表示用
    execute if entity @s[tag=CriticalHit] run scoreboard players set $DamageColor Temporary 4
# ノックバック
    scoreboard players set $XPower Temporary 100
    scoreboard players set $YPower Temporary 80
# 当たり判定
    execute anchored eyes positioned ^ ^ ^-0.1 run function combat:main/spear/rec
    execute positioned ~-4.5 ~-4.5 ~-4.5 as @e[type=#mob:mobs,tag=Hit,tag=Enemy,dx=8,dy=8,dz=8] run function combat:main/hit
# 演出(槍通常)
    function combat:main/spear/effect/_
# リセット
    scoreboard players reset $DamageColor
    scoreboard players reset $XPower
    scoreboard players reset $YPower