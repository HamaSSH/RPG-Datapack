#> world:flags/_
# ワールドのフラグ管理

execute if data storage global: flags{chose_class:1b} run function world:flags/chose_class
execute if data storage global: flags{dungeon_forest:1b} run function world:flags/dungeon_forest
execute if data storage global: flags{dungeon_cave:1b} run function world:flags/dungeon_cave
execute if data storage global: flags{dungeon_icecave:1b} run function world:flags/dungeon_icecave