#> player:class/wizard/passive/weapon
# 適正武器による補正ステータス

# 職業ランクの取得
    scoreboard players operation $StatusMultiplier Temporary = @s PassiveWeapon

# 単純なステータス補正
    scoreboard players add @s AGI 10
    scoreboard players add @s LUK 10

# 転生回数に応じた補正倍率
    scoreboard players operation $StatusMultiplier Temporary *= #5 Constant
    scoreboard players add $StatusMultiplier Temporary 100
    scoreboard players operation @s INT *= $StatusMultiplier Temporary
    scoreboard players operation @s AGI *= $StatusMultiplier Temporary
    scoreboard players operation @s LUK *= $StatusMultiplier Temporary

# 適正武器I=1.05倍｜II=1.1倍｜III=1.15倍｜IV=1.2倍｜V=1.25倍
    scoreboard players operation @s INT /= #100 Constant
    scoreboard players operation @s AGI /= #100 Constant
    scoreboard players operation @s LUK /= #100 Constant

# リセット
    scoreboard players reset $StatusMultiplier Temporary