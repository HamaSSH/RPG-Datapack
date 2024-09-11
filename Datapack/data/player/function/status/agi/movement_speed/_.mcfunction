#> player:status/agi/movement_speed/_
# スコアに基づくプレイヤーの移動速度の設定

# マクロでAGI → movement_speed
    scoreboard players operation $PlayerAGI Temporary = @s AGI
    scoreboard players operation $PlayerAGI Temporary *= #2 Constant
    execute store result storage player: agi float 0.0001 run scoreboard players add $PlayerAGI Temporary 1000
    function player:status/agi/movement_speed/apply with storage player:

# リセット
    scoreboard players reset $PlayerAGI Temporary
    data remove storage player: agi