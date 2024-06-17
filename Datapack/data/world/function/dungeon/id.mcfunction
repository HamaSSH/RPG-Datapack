#> world:dungeon/id
# ダンジョンIDの更新

execute store result score $DungeonID Temporary run data get storage global: Dungeon.ID
execute store result storage global: Dungeon.ID int 1 run scoreboard players add $DungeonID Temporary 1
scoreboard players reset $DungeonID Temporary