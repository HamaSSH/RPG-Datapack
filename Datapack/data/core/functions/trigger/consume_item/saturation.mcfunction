##########
#>
#

# 満腹度回復値を取得
    execute positioned 0 0 0 as @e[type=marker,tag=ConsumeTemp,distance=..0.01,limit=1] if score @s PlayerID = @a[tag=this,limit=1] PlayerID store result score $Saturation Temporary run data get entity @s data.saturation
# 空腹エフェクト
    execute if score $Saturation Temporary matches ..-1 run effect give @s hunger 30 20
    execute if score $Saturation Temporary matches ..-1 run scoreboard players operation $Saturation Temporary *= #-1 Constant
# 数値に応じてeffect
    execute if score $Saturation Temporary matches 1 run effect give @s saturation 1 0 true
    execute if score $Saturation Temporary matches 2 run effect give @s saturation 1 1 true
    execute if score $Saturation Temporary matches 3 run effect give @s saturation 1 2 true
    execute if score $Saturation Temporary matches 4 run effect give @s saturation 1 3 true
    execute if score $Saturation Temporary matches 5 run effect give @s saturation 1 4 true
    execute if score $Saturation Temporary matches 6 run effect give @s saturation 1 5 true
    execute if score $Saturation Temporary matches 7 run effect give @s saturation 1 6 true
    execute if score $Saturation Temporary matches 8 run effect give @s saturation 1 7 true
    execute if score $Saturation Temporary matches 9 run effect give @s saturation 1 8 true
    execute if score $Saturation Temporary matches 10 run effect give @s saturation 1 9 true
    execute if score $Saturation Temporary matches 11 run effect give @s saturation 1 10 true
    execute if score $Saturation Temporary matches 12 run effect give @s saturation 1 11 true
    execute if score $Saturation Temporary matches 13 run effect give @s saturation 1 12 true
    execute if score $Saturation Temporary matches 14 run effect give @s saturation 1 13 true
    execute if score $Saturation Temporary matches 15 run effect give @s saturation 1 14 true
    execute if score $Saturation Temporary matches 16 run effect give @s saturation 1 15 true
    execute if score $Saturation Temporary matches 17 run effect give @s saturation 1 16 true
    execute if score $Saturation Temporary matches 18 run effect give @s saturation 1 17 true
    execute if score $Saturation Temporary matches 19 run effect give @s saturation 1 18 true
    execute if score $Saturation Temporary matches 20.. run effect give @s saturation 1 19 true
# リセット
    scoreboard players reset $Saturation