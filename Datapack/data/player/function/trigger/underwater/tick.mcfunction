#> player:trigger/underwater/tick
# 水中関連のtick処理

# 酸素ゲージ操作
    execute if entity @s[tag=!Underwater] unless score @s Oxygen = @s MaxOxygen run scoreboard players add @s Oxygen 2
    execute if entity @s[tag=Underwater] run scoreboard players remove @s Oxygen 1

# 最小値を下回る場合水没ダメージ
    execute if score @s Oxygen > @s MaxOxygen run scoreboard players operation @s Oxygen = @s MaxOxygen
    execute if score @s Oxygen matches ..-15 run function player:trigger/underwater/drown

# 水中から出た検知
    execute if entity @s[tag=Underwater] if data entity @s {Air:300s} run function player:trigger/underwater/exit