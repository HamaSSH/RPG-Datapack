#> world:dungeon/exit/tick
# ダンジョンの出口

# 1tick目にplaysound
    scoreboard players add @s Timer 1
    execute if score @s Timer matches 1 run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.4 1.5
    execute if score @s Timer matches 1 positioned ^ ^ ^4 run setblock ~ ~ ~ barrel[facing=up]{LootTable:"world:all"}
    execute if score @s Timer matches 1 positioned ^-2 ^ ^4 run setblock ~ ~ ~ barrel[facing=up]{LootTable:"world:all"}
    execute if score @s Timer matches 1 positioned ^2 ^ ^4 run setblock ~ ~ ~ barrel[facing=up]{LootTable:"world:all"}

# 演出
    particle reverse_portal ~ ~ ~ 1 1 1 0.03 36 force
    title @a[distance=..3] times 0 4 0
    title @a[distance=..3] title ""
    title @a[distance=..3] subtitle "- スニークで帰還 -"
    execute as @a[distance=..3] if predicate lib:is_sneaking at @s run function world:dungeon/exit/_