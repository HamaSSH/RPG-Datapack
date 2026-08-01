#> mob:trigger/on_death/drop/loot
# DeathLootTable付きtadpoleをAttackerのダメージで倒し、luckを反映させたバニラドロップを発火

# tadpoleを召喚
    summon tadpole ~ ~ ~ {Silent:1b,NoAI:1b,Health:1f,Tags:["LootCarrier"]}
    execute as @e[type=tadpole,tag=LootCarrier,distance=..0.01,limit=1] run data modify entity @s DeathLootTable set from storage mob:temp data.loot_table

# 一瞬だけモブドロップを許すよ
    gamerule mob_drops true
    execute as @e[type=tadpole,tag=LootCarrier,distance=..0.01,limit=1] run damage @s 10 generic by @p[tag=Attacker]
    gamerule mob_drops false
