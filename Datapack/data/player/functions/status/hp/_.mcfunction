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
    execute if score $HPRatio Temporary matches ..16 run function player:status/hp/bar/lv3/0
    execute if score $HPRatio Temporary matches 17..32 run function player:status/hp/bar/lv3/1
    execute if score $HPRatio Temporary matches 33.. run function player:status/hp/bar/lv2/4

# リセット
    scoreboard players reset $HPRatio Temporary