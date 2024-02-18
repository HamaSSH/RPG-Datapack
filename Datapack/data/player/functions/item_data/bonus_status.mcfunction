#> player:item_data/bonus_status
# 補正ステータスデータを補正ステータススコアに加算していく

execute store result score $BonusStatus Temporary run data get storage player: BonusStatus[0].Value
$scoreboard players operation @s Bonus$(Status) += $BonusStatus Temporary

# 加算する補正ステータスデータが無くなるまで再帰
    data remove storage player: BonusStatus[0]
    execute unless data storage player: BonusStatus[] run scoreboard players reset $BonusStatus Temporary
    execute unless data storage player: BonusStatus[] run data remove storage player: BonusStatus
    execute if data storage player: BonusStatus[] run function player:item_data/bonus_status with storage player: BonusStatus[0]