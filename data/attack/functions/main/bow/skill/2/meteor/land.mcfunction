# 与ダメージ計算
    scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
    scoreboard players operation $DmgDealt Temporary *= #2 Constant
    scoreboard players add $DmgDealt Temporary 8
# ノックバック
    scoreboard players set $XPower Temporary 100
    scoreboard players set $YPower Temporary 100
# 当たり判定
    tag @s add this
    execute positioned ~ ~-1.18 ~ as @e[type=#mob:mobs,tag=Enemy,distance=..3] run function attack:main/bow/skill/hit
# 演出(弓溜め2)
    particle explosion ~ ~ ~ 0.5 0.5 0.5 1 3 force
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 0.3 0.8
# リセット
    kill @s
    scoreboard players reset $DmgDealt
    scoreboard players reset $XPower
    scoreboard players reset $YPower
    tag @s remove this