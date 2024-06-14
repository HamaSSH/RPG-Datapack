#> player:status/mp/_
# MPに関するtick処理

# MP自然回復
    execute if score @s MP matches ..0 run scoreboard players set @s MP 0
    execute if score @s MP >= @s MPMax run scoreboard players operation @s MP = @s MPMax
    execute if score @s MP < @s MPMax run scoreboard players operation @s MPRTimer += @s MPRegen
    execute if score @s MPRTimer matches 2000.. run function player:status/mp/regen

# MPの割合計算
    scoreboard players operation @s MPRatio = @s MP
    scoreboard players operation @s MPRatio *= #835 Constant
    scoreboard players operation @s MPRatio /= @s MPMax

# MPバー操作
    execute unless score @s PreviousMP = @s MP run function player:status/mp/bar/_