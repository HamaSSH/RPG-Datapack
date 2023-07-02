##########
#>
#

# クリティカル時のダメージ表示用
    execute if entity @s[tag=CriticalHit] run scoreboard players set $DamageColor Temporary 4
# ノックバック
    scoreboard players set $XPower Temporary 120
    scoreboard players set $YPower Temporary 150
# 当たり判定
    execute anchored eyes positioned ^ ^ ^ run function combat:main/hammer/rec
    execute as @e[type=#lib:every_mob,tag=Hit,tag=Enemy,tag=!HurtTime,distance=..8,sort=nearest,limit=1] run function combat:main/hammer/hit
    execute positioned ~-4 ~-4 ~-4 as @e[type=#lib:every_mob,tag=Hit,tag=Enemy,dx=7,dy=7,dz=7] run tag @s remove Hit
# 演出(ハンマー通常)
    function combat:main/hammer/effect/_
# リセット
    scoreboard players reset $DamageColor
    scoreboard players reset $XPower
    scoreboard players reset $YPower