#> core:migration/v0.1.2
# v0.1.2にアップデートする際の処理

# バージョン設定
    data modify storage global: Version set value "v0.1.2"

# 醸造・鍛冶・店の設置
    execute positioned 630 134 -772 run function ui:brewing/place
    execute positioned 630 134 -770 run function ui:smithing/place
    execute positioned 620 133 -776 run function ui:shop/place