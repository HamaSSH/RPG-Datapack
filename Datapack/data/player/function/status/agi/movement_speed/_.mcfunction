#> player:status/agi/movement_speed/_
# AGIに基づく移動速度の設定

# 計算式 → movement_speed = (2 * AGI + 1000) / 10000
    scoreboard players operation $PlayerAGI Temporary = @s AGI
    scoreboard players operation $PlayerAGI Temporary *= #2 Constant
    scoreboard players add $PlayerAGI Temporary 1000
    execute store result storage player:temp agi.value float 0.0001 run scoreboard players get $PlayerAGI Temporary
    function player:status/agi/movement_speed/apply.m with storage player:temp agi

# リセット
    scoreboard players reset $PlayerAGI Temporary
    data remove storage player:temp agi
