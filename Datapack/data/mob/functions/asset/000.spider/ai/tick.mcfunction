##########
#>
#

# 常時演出
    #particle dust 0.275 0.239 0.239 3 ~ ~0.3 ~ 0.3 0.3 0.3 0 1 force
# タイマー
    execute if entity @a[distance=..30,limit=1] run scoreboard players add @s Timer 1
    execute unless entity @a[distance=..30,limit=1] run scoreboard players reset @s Timer
# 落ちてくる
    execute if score @s Timer matches 1 run playsound entity.spider.ambient hostile @a
    execute if score @s Timer matches 10 run effect give @s slow_falling 1 3 true
    execute if score @s Timer matches 14 run effect give @s levitation 2 5 true
    execute if score @s Timer matches 23 run data modify entity @s NoAI set value 1b
    execute if score @s Timer matches 23..31 facing entity @p eyes run tp @s ~ ~ ~ ~ ~
    execute if score @s Timer matches 1..30 at @s run particle dust 1 1 1 1 ~ ~7.3 ~ 0 2 0 0 20 force
    execute if score @s Timer matches 1..30 at @s run particle dust 1 1 1 1 ~ ~2.7 ~ 0 0.8 0 0 5 force
    execute if score @s Timer matches 31..32 run particle dust 0.275 0.239 0.239 3 ~ ~0.3 ~ 0.6 0.6 0.6 0 10 force
    execute if score @s Timer matches 31 run function mob:asset/000.spider/ai/init
    execute if score @s Timer matches 33 run effect clear @s levitation