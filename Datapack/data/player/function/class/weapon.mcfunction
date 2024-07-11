#> player:class/weapon
# 適正武器による補正ステータス #TODO: 職業ごとにやったほうがいいかも

# 転生回数の取得
    execute if predicate player:class/is_rogue run scoreboard players operation $StatusMultiplier Temporary = @s RogueRank
    execute if predicate player:class/is_fighter run scoreboard players operation $StatusMultiplier Temporary = @s FighterRank
    execute if predicate player:class/is_paladin run scoreboard players operation $StatusMultiplier Temporary = @s PaladinRank
    execute if predicate player:class/is_wizard run scoreboard players operation $StatusMultiplier Temporary = @s WizardRank
# 単純なステータス補正
    scoreboard players add @s DEF 10
    scoreboard players add @s AGI 10
    scoreboard players add @s CRT 10
    scoreboard players add @s LUK 10

# 転生回数に応じた補正倍率
    scoreboard players add $StatusMultiplier Temporary 11
    scoreboard players operation @s STR *= $StatusMultiplier Temporary
    scoreboard players operation @s INT *= $StatusMultiplier Temporary
    scoreboard players operation @s DEX *= $StatusMultiplier Temporary
    scoreboard players operation @s DEF *= $StatusMultiplier Temporary
    scoreboard players operation @s AGI *= $StatusMultiplier Temporary
    scoreboard players operation @s CRT *= $StatusMultiplier Temporary
    scoreboard players operation @s LUK *= $StatusMultiplier Temporary

# 転生０回=1.1倍｜１回=1.2倍｜２回=1.3倍
    scoreboard players operation @s STR /= #10 Constant
    scoreboard players operation @s INT /= #10 Constant
    scoreboard players operation @s DEX /= #10 Constant
    scoreboard players operation @s DEF /= #10 Constant
    scoreboard players operation @s AGI /= #10 Constant
    scoreboard players operation @s CRT /= #10 Constant
    scoreboard players operation @s LUK /= #10 Constant

# リセット
    scoreboard players reset $StatusMultiplier Temporary