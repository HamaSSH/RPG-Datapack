##########
#>
#

# クリティカル時のダメージ表示用
    execute if entity @s[tag=CriticalHit] run scoreboard players set $DamageColor Temporary 4
# ノックバック
    scoreboard players set $XPower Temporary 70
    scoreboard players set $YPower Temporary 70
# 当たり判定
    execute anchored eyes positioned ^ ^ ^-0.1 run function combat:main/dagger/rec
    execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,distance=..7,sort=nearest,limit=2] run function combat:main/dagger/hit
    execute positioned ~-3.5 ~-3.5 ~-3.5 as @e[type=#mob:mobs,tag=Hit,tag=Enemy,dx=6,dy=6,dz=6] run tag @s remove Hit
# 演出(短剣通常)
    function combat:main/dagger/effect/_
# リセット
    scoreboard players reset $DamageColor
    scoreboard players reset $XPower
    scoreboard players reset $YPower