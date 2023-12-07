#> asset:material/401.sweet_berries/collect/death
# 死亡処理

# 見た目の変更
    function asset:material/401.sweet_berries/collect/stage/1

# ばらまく
    loot spawn ~ ~ ~ loot asset:material/401.sweet_berries
    loot spawn ~ ~ ~ loot asset:material/401.sweet_berries

# 演出
    particle poof ~ ~ ~ 0.2 0.2 0.2 0.01 20 force