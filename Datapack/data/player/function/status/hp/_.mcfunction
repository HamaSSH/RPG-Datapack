#> player:status/hp/_
# HPに関するtick処理

# HP自然回復
    execute if score @s HP >= @s MaxHP run scoreboard players operation @s HP = @s MaxHP
    execute if score @s HP < @s MaxHP run scoreboard players operation @s HPRTimer += @s HPR
    execute if score @s HPRTimer matches 2000.. run function player:status/hp/regen

# setdisplay listに表示するHP割合計算
    scoreboard players operation @s HPRatio = @s HP
    scoreboard players operation @s HPRatio *= #40 Constant
    scoreboard players operation @s HPRatio /= @s MaxHP
    scoreboard players add @s HPRatio 1
    scoreboard players operation @s HPRatio /= #2 Constant
    execute if score @s HPRatio matches ..0 run scoreboard players set @s HPRatio 1

# HPハート表示用のHP割合計算
    scoreboard players operation $HPRatio Temporary = @s HP
    scoreboard players operation $HPRatio Temporary *= #40 Constant
    execute if score @s MaxHP matches ..200 run scoreboard players operation $HPRatio Temporary /= #200 Constant
    execute if score @s MaxHP matches 201.. run scoreboard players operation $HPRatio Temporary /= @s MaxHP
    execute store result storage macro:temp hp_ratio.value int 1 run scoreboard players get $HPRatio Temporary

# HPハートの適用
    function player:status/hp/bar/set.m with storage macro:temp hp_ratio
    effect give @s health_boost infinite 0 true
    effect clear @s health_boost

# リセット
    scoreboard players reset $HPRatio Temporary
    data remove storage macro:temp hp_ratio