#> player:on_death/lose_gold
# ゴールドを3~5割失う

# 失うゴールドを決定
    scoreboard players operation $GoldLoss Temporary = @s Gold
    execute store result score $Multiplier Temporary run random value 20..40
    scoreboard players operation $GoldLoss Temporary *= $Multiplier Temporary
    scoreboard players operation $GoldLoss Temporary /= #100 Constant
    # プレイヤーレベルに応じてペナルティ増
        scoreboard players operation $PlayerLevel Temporary = @s LVL
        scoreboard players operation $PlayerLevel Temporary *= #10 Constant
        scoreboard players operation $GoldLoss Temporary += $PlayerLevel Temporary
    execute if score $GoldLoss Temporary >= @s Gold run scoreboard players operation $GoldLoss Temporary = @s Gold

# ゴールドを失う
    scoreboard players operation @s Gold -= $GoldLoss Temporary
    execute if score $GoldLoss Temporary matches 1.. run tellraw @s [{"text":"","color":"red"},"☠ 手持ちのゴールドを失ってしまった...！ -",{"score":{"name":"$GoldLoss","objective":"Temporary"},"bold":true},"G"]

# リセット
    scoreboard players reset $GoldLoss Temporary
    scoreboard players reset $Multiplier Temporary
    scoreboard players reset $PlayerLevel Temporary