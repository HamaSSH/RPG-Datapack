#> player:status/hp/healing
# アイテムによるHP回復

# $Heal分の♥回復
    execute if score @s HPMax matches ..200 run scoreboard players set $Healing Temporary 5
    execute if score @s HPMax matches 201.. run scoreboard players operation $Healing Temporary = @s HPMax
    execute if score @s HPMax matches 201.. run scoreboard players operation $Healing Temporary /= #40 Constant
    execute if score @s HP < @s HPMax run scoreboard players operation @s HP += $Healing Temporary
    execute if score @s HP >= @s HPMax run scoreboard players operation @s HP = @s HPMax

# HP回復時ステータス更新(ファイターの闘志用)
    execute if predicate player:class/is_fighter run tag @s add StatusUpdate

# 後処理
    scoreboard players remove @s Healing 1
    scoreboard players reset $Healing Temporary