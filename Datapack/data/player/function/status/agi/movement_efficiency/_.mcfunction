#> player:status/agi/movement_efficiency/_
# AGIに基づく移動効率の設定

# 計算式 → movement_efficiency = min(1000, AGI*2 - AGI^2/1000) / 1000
    scoreboard players operation $PlayerAGI Temporary = @s AGI
    scoreboard players operation $PlayerAGI Temporary *= #2000 Constant
    scoreboard players operation $PlayerAGI2 Temporary = @s AGI
    scoreboard players operation $PlayerAGI2 Temporary *= $PlayerAGI2 Temporary
    scoreboard players operation $PlayerAGI Temporary -= $PlayerAGI2 Temporary
    scoreboard players operation $PlayerAGI Temporary /= #1000 Constant
    execute if score $PlayerAGI Temporary matches 1000.. run scoreboard players set $PlayerAGI Temporary 1000
    execute store result storage player:temp agi.value float 0.001 run scoreboard players get $PlayerAGI Temporary
    function player:status/agi/movement_efficiency/apply.m with storage player:temp agi

# リセット
    scoreboard players reset $PlayerAGI Temporary
    scoreboard players reset $PlayerAGI2 Temporary
    data remove storage player:temp agi
