#> mob:on_death/drop/loot/_
# 死亡時幸運値が乗るようにアイテムをドロップ

# ルートテーブルの設定
    data modify storage mob: LootTable set from entity @s DeathLootTable
    function mob:on_death/drop/loot/loottable with storage mob:

# アイテムをドロップ
    gamerule doMobLoot true
    damage @e[type=tadpole,distance=..0.01,limit=1] 1.0 generic by @p from @p
    gamerule doMobLoot false