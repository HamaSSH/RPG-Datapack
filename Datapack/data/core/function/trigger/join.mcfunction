#> core:trigger/join
# ワールドjoin時の共通処理

# バージョンチェック
    data modify storage temp: data_version set from entity @s DataVersion
    execute unless data storage temp: {data_version:4671} run function core:error/data_version
    data remove storage temp: data_version

# リソースパックを読み込めているかチェック
    tellraw @s {"translate":" ✖ リソースパックが正常に導入されていません！","color":"red"}