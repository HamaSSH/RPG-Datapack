#> player:on_death/lose_gold
# ゴールドを3~5割失う

# 失うゴールドを決定
    scoreboard players operation $GoldLoss Temporary = @s Gold
    execute store result score $Multiplier Temporary run random value 30..50
    scoreboard players operation $GoldLoss Temporary *= $Multiplier Temporary
    scoreboard players operation $GoldLoss Temporary /= #100 Constant

# ゴールドを失う
    scoreboard players operation @s Gold -= $GoldLoss Temporary
    tellraw @s ["☠ 手持ちの ",{"score":{"name":"$GoldLoss","objective":"Temporary"},"bold":true},{"text":"G","color":"yellow"},{"text":" を失ってしまった...。"}]

# リセット
    scoreboard players reset $GoldLoss Temporary
    scoreboard players reset $Multiplier Temporary