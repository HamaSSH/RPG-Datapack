#> player:rejoin
# ワールドの再入場処理

# メニューのclear
    clear @s structure_void
    execute as @e[type=item] if data entity @s Item{id:"minecraft:structure_void"} run kill @s

# movement_speedの再設定
    function player:status/agi/movement_speed/_

# リセット
    scoreboard players reset @s Rejoin