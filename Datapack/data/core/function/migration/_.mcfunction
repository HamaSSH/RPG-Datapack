#> core:migration/_
# アップデート処理

execute as @p if data storage global: {Version:"v0.1.0"} run function core:migration/v0.1.1
execute as @p if data storage global: {Version:"v0.1.1"} run function core:migration/v0.1.2

# バージョンアップ処理
    execute unless entity @p run schedule function core:migration/_ 1t