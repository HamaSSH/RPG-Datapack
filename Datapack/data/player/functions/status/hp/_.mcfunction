#> player:status/hp/_
# HPに関するtick処理

# HP自然回復
    execute if score @s HP >= @s HPMax run scoreboard players operation @s HP = @s HPMax
    execute if score @s HP < @s HPMax run scoreboard players operation @s HPRTimer += @s HPRegen
    execute if score @s HPRTimer matches 2000.. run function player:status/hp/regen

# setdisplay listに表示するHP割合計算
    scoreboard players operation @s HPRatio = @s HP
    scoreboard players operation @s HPRatio *= #40 Constant
    scoreboard players operation @s HPRatio /= @s HPMax
    scoreboard players add @s HPRatio 1
    scoreboard players operation @s HPRatio /= #2 Constant
    execute if score @s HPRatio matches ..0 run scoreboard players set @s HPRatio 1

# HPハート表示用のHP割合計算
    scoreboard players operation $HPRatio Temporary = @s HP
    scoreboard players operation $HPRatio Temporary *= #40 Constant
    execute if score @s HPMax matches ..200 run scoreboard players operation $HPRatio Temporary /= #200 Constant
    execute if score @s HPMax matches 201.. run scoreboard players operation $HPRatio Temporary /= @s HPMax

# HPハートの適用
    execute store result storage player: HPRatio.Value int 1 run scoreboard players get $HPRatio Temporary
    function player:status/hp/bar with storage player: HPRatio
    effect give @s health_boost infinite 0 true
    effect clear @s health_boost

# リセット
    scoreboard players reset $HPRatio Temporary
    data remove storage player: HPRatio