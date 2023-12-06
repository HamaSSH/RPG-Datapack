#> player:trigger/using_item/shears/rec
# 目の先のブロックを再帰で検知

# 植物ブロックが検知できたら収穫処理
    execute if block ~ ~ ~ #asset:harvest align xyz positioned ~0.5 ~0.8 ~0.5 run function player:trigger/using_item/shears/harvest

# 植物ブロックが検知できるまで再帰
    execute unless block ~ ~ ~ #asset:harvest if entity @s[distance=..5] if block ~ ~ ~ #lib:air positioned ^ ^ ^0.1 run function player:trigger/using_item/shears/rec