#> asset:quest/600.example/reward
# クエスト達成時の報酬

tellraw @s ["\n",{"text":"クエストクリア！"},{"text":"「畑荒らしに鉄槌を」","color":"yellow"},"\n","◆ 報酬: 500G, 300XP, ダイヤの剣×1","\n"]
scoreboard players add @s gold 500
scoreboard players set @s xp_gained 300
give @s diamond_sword