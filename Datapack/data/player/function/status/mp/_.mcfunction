#> player:status/mp/_
# MPに関するtick処理

# MP自然回復
    execute if score @s MP matches ..0 run scoreboard players set @s MP 0
    execute if score @s MP >= @s MaxMP run scoreboard players operation @s MP = @s MaxMP
    execute if score @s MP < @s MaxMP run scoreboard players operation @s MPRTimer += @s MPR
    execute if score @s MPRTimer matches 2000.. run function player:status/mp/regen

# MPバー操作
    # MPの割合計算
        scoreboard players operation @s MPRatio = @s MP
        scoreboard players operation @s MPRatio *= #835 Constant
        scoreboard players operation @s MPRatio /= @s MaxMP
    # MPバーを適用
        execute unless score @s PrevMPRatio = @s MPRatio run function player:status/mp/bar/_