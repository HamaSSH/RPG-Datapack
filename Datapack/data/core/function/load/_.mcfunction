#> core:load/_
# ワールドload時実行するコマンド群

# TODO: リリース時1bにする
    data modify storage global: is_production set value 0b
    execute if data storage global: {is_production:0b} run say reload

# 初期設定
    execute if data storage global: {is_production:1b} unless data storage global: version run function core:load/once
    execute if data storage global: {is_production:0b} run function core:load/once