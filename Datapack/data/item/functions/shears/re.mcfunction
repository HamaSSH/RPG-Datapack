#> item:shears/re
# 目の前のブロックを検知

# 植物ブロックが検知できたら破壊処理
    execute if block ~ ~ ~ #item:harvestable run tag @s add Harvestable
    execute if block ~ ~ ~ #item:harvestable align xyz positioned ~0.5 ~0.8 ~0.5 run function item:shears/pick

# 植物ブロックが検知できるまで再帰
    execute unless entity @s[tag=Harvestable] if entity @s[distance=..5] if block ~ ~ ~ #lib:air positioned ^ ^ ^0.1 run function item:shears/re