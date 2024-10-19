#> asset:material/401.sweet_berries/collect/break
# 破壊処理

# ばらまく
    # loot spawn ~ ~ ~ loot asset:material/401.sweet_berries
    # loot spawn ~ ~ ~ loot asset:material/401.sweet_berries_2

# 後処理
    execute on passengers run kill @s
    kill @s

# 演出
    particle poof ~ ~ ~ 0.2 0.2 0.2 0.01 10 force