#> mob:on_death/drop/loot/_
# 死亡時幸運値が乗るようにアイテムをドロップ

# ルートテーブルの保存
    data modify storage mob: DeathLootTable set from entity @s DeathLootTable

# アイテムをドロップ
    gamerule doMobLoot true
    summon tadpole ~ ~ ~ {Silent:1b,NoAI:1b,Health:1.0f}
    execute as @e[type=tadpole,distance=..0.01,limit=1] run function mob:on_death/drop/loot/loottable

# リセット
    data remove storage mob: DeathLootTable
    gamerule doMobLoot false