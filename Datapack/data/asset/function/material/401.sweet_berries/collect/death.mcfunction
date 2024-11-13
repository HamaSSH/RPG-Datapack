#> asset:material/401.sweet_berries/collect/death
# 死亡処理

# リスポーンタイマーの始動
    tag @s add Growing
    setblock ~ ~1 ~ nether_wart

# 見た目の変更
    execute on passengers run data modify entity @s item.components.minecraft:item_model set value "resource:custom/material/sweet_berries_1"

# ばらまく
    loot spawn ~ ~ ~ loot asset:material/401.sweet_berries
    loot spawn ~ ~ ~ loot asset:material/401.sweet_berries
    data modify entity @s CustomNameVisible set value 0b

# 演出
    particle poof ~ ~ ~ 0.2 0.2 0.2 0.01 20 force