#> world:open_chest
# 宝箱を開ける #TODO: loottableの名前(全部追加)

scoreboard players add @s 3.3.GenerateLoot 1
execute if score @s 3.3.GenerateLoot matches 30.. run advancement grant @s only asset:achievement/3.3

# リセット
    advancement revoke @s only world:open_chest