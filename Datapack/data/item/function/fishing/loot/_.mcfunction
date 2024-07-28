#> item:fishing/loot/_
# 釣り時幸運値が乗るようにアイテムをドロップ

# アイテムをドロップ
    gamerule doMobLoot true
    summon tadpole ~ ~ ~ {Silent:1b,NoAI:1b,Health:1f,DeathLootTable:"item:fishing/roll"}
    execute as @e[type=tadpole,distance=..0.01,limit=1] run function item:fishing/loot/init

# リセット
    gamerule doMobLoot false