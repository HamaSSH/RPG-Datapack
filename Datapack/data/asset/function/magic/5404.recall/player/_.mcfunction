#> asset:magic/5404.recall/player/_
# 魔法を発動した後のプレイヤーのtick処理

scoreboard players add @s 5404.Tick 1
particle reverse_portal ~ ~0.1 ~ 0.8 0 0.8 0.03 25 force

# 動き検知用のマーカー
    execute if score @s 5404.Tick matches 60 run summon area_effect_cloud ~ ~ ~ {Duration:120,Tags:["RecallCheck"]}
    execute if score @s 5404.Tick matches 60..119 unless entity @e[type=area_effect_cloud,tag=RecallCheck,distance=..0.01,limit=1] run function asset:magic/5404.recall/player/fail

# テレポート完了
    execute if score @s 5404.Tick matches 120 as @a[distance=..4] positioned as 83a-51-1-0-2 run tp @s ~ ~ ~ -90 0
    execute if score @s 5404.Tick matches 120 positioned as 83a-51-1-0-2 run playsound block.beacon.power_select master @a ~ ~ ~ 0.2 1.1
    execute if score @s 5404.Tick matches 120 run scoreboard players reset @s 5404.Tick