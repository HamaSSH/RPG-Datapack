#> item:material/summon/set_display
# 採集ポイントアマスタの初期化

# モデルの設定
$data modify entity @s item set value {id:"minecraft:dead_horn_coral",Count:1b,tag:{CustomModelData:$(MaterialID)}}

# 共通データの設定
    tag @s add Material
    data modify entity @s transformation.translation[1] set value -0.3f
    ride @s mount @e[type=armor_stand,tag=Material,distance=..0.01,limit=1]