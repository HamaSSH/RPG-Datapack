#> world:dungeon/enter/check
# ダンジョンを新たに生成するか

# もしダンジョン入場中の人がいれば同じところに入場
    execute if entity @a[predicate=player:in_dungeon] run function world:dungeon/enter/_ with storage global: Dungeon

# もしダンジョン入場中の人がいなければ新しいところへ
    execute unless entity @a[predicate=player:in_dungeon] run function world:dungeon/id
    execute unless entity @a[predicate=player:in_dungeon] run function world:dungeon/generate with storage global: Dungeon
    execute unless entity @a[predicate=player:in_dungeon] run function world:dungeon/enter/_ with storage global: Dungeon

# 実績チャレンジスタート
    tag @s add 3.4.NoDamage
    scoreboard players set @s 3.5.DungeonTimer 0

# リセット
    advancement revoke @s only world:dungeon/enter