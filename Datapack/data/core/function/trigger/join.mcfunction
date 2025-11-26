#> core:trigger/join
# ワールドjoin時の共通処理

# バージョンチェック
    data modify storage temp: data_version set from entity @s DataVersion
    execute unless data storage temp: {data_version:4665} run function core:error/data_version