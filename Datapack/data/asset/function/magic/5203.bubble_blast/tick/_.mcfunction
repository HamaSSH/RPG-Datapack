#> asset:magic/5203.bubble_blast/tick/_
# 魔法のtick時の処理

# タイマー駆動
    scoreboard players add @s Timer 1
    execute if predicate lib:percentage/50 run particle enchant ~ ~ ~ 0.3 0.3 0.3 0.2 1 force

# バブルを少しずつ前進
    execute if score @s Timer matches 1..5 run tp @s ^ ^ ^0.2
    execute if score @s Timer matches 6..10 run tp @s ^ ^ ^0.175
    execute if score @s Timer matches 11..15 run tp @s ^ ^ ^0.15
    execute if score @s Timer matches 16..20 run tp @s ^ ^ ^0.125
    execute if score @s Timer matches 21..30 run tp @s ^ ^ ^0.1
    execute if score @s Timer matches 31..60 run tp @s ^ ^ ^0.05
    execute if score @s Timer matches 61..80 run tp @s ^ ^ ^0.02

# モブの当たり判定を検知
    execute if score @s Timer matches 1..80 run function asset:magic/5203.bubble_blast/tick/detect/_

# バブル破裂（寿命）
    execute if score @s Timer matches ..80 unless block ^ ^ ^0.6 #lib:no_collision run scoreboard players set @s Timer 80
    execute if score @s Timer matches 80 run data modify entity @s text set value '"\\uF808\\uF001"'
    execute if score @s Timer matches 81 run data modify entity @s text set value '"\\uF808\\uF002"'
    execute if score @s Timer matches 81 run playsound block.bubble_column.bubble_pop master @a ~ ~ ~ 1 1
    execute if score @s Timer matches 81 run playsound block.bubble_column.bubble_pop master @a ~ ~ ~ 1 1
    execute if score @s Timer matches 81 run playsound block.bubble_column.bubble_pop master @a ~ ~ ~ 1 1
    execute if score @s Timer matches 82 run kill @s

# 乗っているモブを上に持っていく
    execute if score @s Timer matches 100.. run tp @s ~ ~0.1 ~

# バブル破裂（寿命）
    execute if score @s Timer matches 100..140 unless block ~ ~0.1 ~ #lib:no_collision run scoreboard players set @s Timer 140
    execute if score @s Timer matches 100..138 unless predicate lib:has_passenger run scoreboard players set @s Timer 138
    execute if score @s Timer matches 140 run data modify entity @s text set value '"\\uF808\\uF001"'
    execute if score @s Timer matches 141 run data modify entity @s text set value '"\\uF808\\uF002"'
    execute if score @s Timer matches 141 run playsound block.bubble_column.bubble_pop master @a ~ ~ ~ 1 1
    execute if score @s Timer matches 141 run playsound block.bubble_column.bubble_pop master @a ~ ~ ~ 1 1
    execute if score @s Timer matches 141 run playsound block.bubble_column.bubble_pop master @a ~ ~ ~ 1 1
    execute if score @s Timer matches 142 on passengers run tag @s remove Bubbled
    execute if score @s Timer matches 142 run kill @s