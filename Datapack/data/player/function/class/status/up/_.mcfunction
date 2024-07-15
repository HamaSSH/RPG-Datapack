#> player:class/status/up/_
# クラスごとのステータスアップ処理呼び出し

# スコア前準備
    scoreboard players operation %2 Temporary = @s LVL
    scoreboard players operation %3 Temporary = @s LVL
    scoreboard players operation %4 Temporary = @s LVL
    scoreboard players operation %5 Temporary = @s LVL
    scoreboard players operation %2 Temporary %= #2 Constant
    scoreboard players operation %3 Temporary %= #3 Constant
    scoreboard players operation %4 Temporary %= #4 Constant
    scoreboard players operation %5 Temporary %= #5 Constant
    scoreboard players operation $LVL/10 Temporary = @s LVL
    scoreboard players operation $LVL/10 Temporary /= #10 Constant

# クラスごとのステータスアップ
    execute if predicate player:class/is_hunter run function player:class/status/up/hunter
    execute if predicate player:class/is_fighter run function player:class/status/up/fighter
    execute if predicate player:class/is_paladin run function player:class/status/up/paladin
    execute if predicate player:class/is_wizard run function player:class/status/up/wizard
    tag @s add StatusUpdate
    tag @s add MPFull

# リセット
    scoreboard players reset %2 Temporary
    scoreboard players reset %3 Temporary
    scoreboard players reset %4 Temporary
    scoreboard players reset %5 Temporary
    scoreboard players reset $LVL/10 Temporary