#> player:status/agi/movement_efficiency/_
# スコアに基づくプレイヤーの移動速度の設定

# マクロでAGI → movement_efficiency & water_movement_efficiency
# 計算式 → AGI * 2 - AGI^2 / 1000 = (2000 * x - x^2) / 1000
    scoreboard players operation $PlayerAGI Temporary = @s AGI
    scoreboard players operation $PlayerAGI Temporary *= #2000 Constant
    scoreboard players operation $PlayerAGI2 Temporary = @s AGI
    scoreboard players operation $PlayerAGI2 Temporary *= $PlayerAGI2 Temporary
    scoreboard players operation $PlayerAGI Temporary -= $PlayerAGI2 Temporary
    scoreboard players operation $PlayerAGI Temporary /= #1000 Constant
    execute if score $PlayerAGI Temporary matches 1000.. run scoreboard players set $PlayerAGI Temporary 1000
    execute store result storage player: agi float 0.001 run scoreboard players get $PlayerAGI Temporary
    function player:status/agi/movement_efficiency/apply with storage player:

# リセット
    scoreboard players reset $PlayerAGI Temporary
    scoreboard players reset $PlayerAGI2 Temporary
    data remove storage player: agi