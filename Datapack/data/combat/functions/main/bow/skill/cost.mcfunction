##########
#>
#

# 放った時のプレイヤーの角度取得
    execute store result score $Angle Temporary run data get entity @s Rotation[1]
# MPコスト
    scoreboard players set $MPCost Temporary 30
    function player:status/mp/check/_
    execute if entity @s[tag=MPCheck] if score $Angle Temporary matches -60..90 run function combat:main/bow/skill/1/init
    execute if entity @s[tag=MPCheck] unless score $Angle Temporary matches -60..90 run function combat:main/bow/skill/2/init
# リセット
    tag @s remove MPCheck
    scoreboard players reset $Angle
    scoreboard players reset $MPCost