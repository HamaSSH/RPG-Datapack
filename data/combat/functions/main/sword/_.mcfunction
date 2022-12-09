# クリティカル時のダメージ表示用
    execute if entity @s[tag=CriticalHit] run scoreboard players set $DamageColor Temporary 4
# ノックバック
    scoreboard players set $XPower Temporary 100
    scoreboard players set $YPower Temporary 100
# 当たり判定
    execute anchored eyes positioned ^ ^ ^-0.2 run function combat:main/sword/rec
    execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,tag=!HurtTime,distance=..8,sort=nearest,limit=1] run function combat:main/sword/hit
    execute positioned ~-4 ~-4 ~-4 as @e[type=#mob:mobs,tag=Hit,tag=Enemy,dx=7,dy=7,dz=7] run tag @s remove Hit
# 演出(刀剣通常)
    function combat:main/sword/effect/_
# リセット
    scoreboard players reset $DamageColor
    scoreboard players reset $XPower
    scoreboard players reset $YPower