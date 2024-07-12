#> world:dungeon/enter/_
# プレイヤーをダンジョンに入れる #TODO: ダンジョンの入り口(スポーン位置)

$execute in world:dungeon positioned 0 101 $(ID)000 positioned as @n[type=marker,tag=DungeonEntrance] run tp @s ~ ~1 ~