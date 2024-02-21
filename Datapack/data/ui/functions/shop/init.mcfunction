#> ui:shop/init
# UI用エンティティの初期化

tag @s remove UIInit

# プレイヤーUUIDの保存
    data modify entity @s attack.player set from entity @p UUID

# 店の商品のデータをmarkerに格納
    execute on passengers on passengers run data modify entity @s data.ShopData set from storage ui: ShopData

# UIの初期化
    execute on passengers run function ui:shop/page/init