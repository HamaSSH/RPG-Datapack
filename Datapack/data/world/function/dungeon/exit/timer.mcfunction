#> world:dungeon/exit/timer
# ダンジョン脱出時のタイマー記録

# スピードランナー
    execute if score @s 3.5.DungeonTimer matches ..6000 run advancement grant @s only asset:achievement/3.5
    scoreboard players reset @s 3.5.DungeonTimer