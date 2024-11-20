#> asset:material/sweet_berries/collect/block
# 破壊処理

# ばらまく
    loot spawn ~ ~ ~ loot asset:material/sweet_berries_sapling

# 後処理
    fill ~ ~1 ~ ~ ~1 ~ air replace nether_wart
    execute on passengers run kill @s
    kill @s

# 演出
    particle poof ~ ~ ~ 0.2 0.2 0.2 0.01 10 force