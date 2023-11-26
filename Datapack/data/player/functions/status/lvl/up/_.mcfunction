#> player:status/lvl/up/_
# レベルアップ処理

# 元々のレベルの値を保存
    execute unless score $PreviousLVL Temporary matches 1.. run scoreboard players operation $PreviousLVL Temporary = @s LVL

# レベルアップ
    tag @s add LevelUp
    scoreboard players add @s LVL 1

# 次の必要経験値の計算
    scoreboard players operation @s EXP -= @s NextEXP
    function player:status/lvl/exp/calculate

# レベルアップをお知らせ
    execute if score @s EXP < @s NextEXP run function player:status/lvl/up/tellraw
    tag @s remove LevelUp

# 複数レベルアップする場合再帰
    execute if score @s EXP >= @s NextEXP run function player:status/lvl/up/_