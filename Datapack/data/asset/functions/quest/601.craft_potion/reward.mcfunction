#> asset:quest/601.craft_potion/reward
# クエスト達成時の報酬

tellraw @s ["\n",{"text":"クエストクリア！"},{"text":"「ポーションクラフト」","color":"yellow"},"\n","◆ 報酬: 300G, 100XP","\n"]
scoreboard players add @s gold 300
scoreboard players set @s xp_gained 100