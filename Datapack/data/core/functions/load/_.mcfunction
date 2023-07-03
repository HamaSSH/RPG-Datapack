#> core:load/_
# load時実行するコマンド

# TODO: リリース時1bにする
    data modify storage global: IsProduction set value 0b
    execute if data storage global: {IsProduction:0b} run say reload

# 初期設定
    execute if data storage global: {IsProduction:1b} unless data storage global: Version run function core:load/once
    execute if data storage global: {IsProduction:0b} run function core:load/once