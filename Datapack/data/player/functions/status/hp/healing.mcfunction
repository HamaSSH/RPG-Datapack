#> player:status/hp/healing
# アイテムによるHP回復

# $Heal分の♥回復
    execute if score @s HPMax matches ..200 run scoreboard players set $Healing Temporary 5
    execute if score @s HPMax matches 201.. run scoreboard players operation $Healing Temporary = @s HPMax
    execute if score @s HPMax matches 201.. run scoreboard players operation $Healing Temporary /= #40 Constant
    scoreboard players operation @s HP += $Healing Temporary

# 後処理
    scoreboard players remove @s Healing 1
    scoreboard players reset $Healing Temporary