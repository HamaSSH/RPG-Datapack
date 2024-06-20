#> ui:shop/init
# UI用エンティティの初期化

tag @s remove UIInit

# プレイヤーUUIDの保存
    data modify entity @s attack.player set from entity @p[advancements={ui:looking_at/shop=true}] UUID

# 店の商品のデータをmarkerに格納
    execute on passengers on passengers run data modify entity @s data.shop_data set from storage ui: shop_data
    execute on passengers on passengers run scoreboard players set @s ShopPage 0

# UIの初期化
    execute on passengers run function ui:shop/page/init {Page:0}