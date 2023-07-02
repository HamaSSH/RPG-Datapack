#> item:fishing/data/1016
# 釣ったアイテムのデータを生成

# データ生成用のデータ取得
    execute in minecraft:overworld run data modify storage item: zukanData set from block 276 -32 -414 Items[{tag:{CustomModelData:1016}}].tag
    execute store result score $MaxSize Temporary run data get storage item: zukanData.Fish.Max
    execute store result score $MinSize Temporary run data get storage item: zukanData.Fish.Min
    execute store result score $Count Temporary run data get storage item: zukanData.Fish.Count
    execute store result score $BiggestRN Temporary run data get storage item: zukanData.Fish.Biggest

# 魚のサイズの抽選
    scoreboard players operation $RNGMax Temporary = $MaxSize Temporary
    scoreboard players operation $RNGMax Temporary -= $MinSize Temporary
    scoreboard players add $RNGMax Temporary 1
    function core:rng
    scoreboard players operation $RNG Temporary += $MinSize Temporary

# 銀サイズの判定（約20%）
    scoreboard players operation $SilverSizeR Temporary = $MaxSize Temporary
    scoreboard players operation $SilverSizeR Temporary -= $MinSize Temporary
    scoreboard players operation $SilverSizeR Temporary /= #5 Constant
    scoreboard players operation $SilverSize Temporary = $MaxSize Temporary
    scoreboard players operation $SilverSize Temporary -= $SilverSizeR Temporary
    execute if score $RNG Temporary >= $SilverSize Temporary run data modify storage item:temp Data.Crown set value '{"text":"\\uE18D","color":"#B9B9B9"}'
    execute if score $RNG Temporary >= $SilverSize Temporary run playsound resource:custom.levelup master @a ~ ~ ~ 0.2 0.9
    execute if score $RNG Temporary >= $SilverSize Temporary run particle totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.5 50 force

# 金サイズの判定（約5%）
    scoreboard players operation $GoldSizeR Temporary = $MaxSize Temporary
    scoreboard players operation $GoldSizeR Temporary -= $MinSize Temporary
    scoreboard players operation $GoldSizeR Temporary /= #20 Constant
    scoreboard players operation $GoldSize Temporary = $MaxSize Temporary
    scoreboard players operation $GoldSize Temporary -= $GoldSizeR Temporary
    execute if score $RNG Temporary >= $GoldSize Temporary run data modify storage item:temp Data.Crown set value '{"text":"\\uE18D","color":"#F1D604"}'
    execute if score $RNG Temporary >= $GoldSize Temporary run playsound resource:custom.levelup master @a ~ ~ ~ 0.25 1.2
    execute if score $RNG Temporary >= $GoldSize Temporary run particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0.8 100 force

# 釣った魚のデータをチャット欄に表示
    scoreboard players operation $Int Temporary = $RNG Temporary
    scoreboard players operation $Int Temporary /= #100 Constant
    scoreboard players operation $Dec10 Temporary = $RNG Temporary
    scoreboard players operation $Dec10 Temporary %= #100 Constant
    scoreboard players operation $Dec10 Temporary /= #10 Constant
    scoreboard players operation $Dec1 Temporary = $RNG Temporary
    scoreboard players operation $Dec1 Temporary %= #10 Constant
    execute if score $Count Temporary matches 0 run data modify storage item:temp Data.New set value '{"text":" NEW!","bold":true,"color":"#F3E478"}'
    execute if score $RNG Temporary >= $BiggestRN Temporary run data modify storage item:temp Data.Updated set value '{"text":" ‐最大サイズ更新‐","color":"gray"}'
    tellraw @p [{"text":"\uE401"},{"text":" スパークサーモン x1","bold":true},{"nbt":"Data.New","storage":"item:temp","interpret":true},{"text":"\n\uF82A\uF804サイズ: "},{"nbt":"Data.Crown","storage":"item:temp","interpret":true},"\uF822",{"score":{"objective":"Temporary","name":"$Int"}},".",{"score":{"objective":"Temporary","name":"$Dec10"}},{"score":{"objective":"Temporary","name":"$Dec1"}},"\uF822cm",{"nbt":"Data.Updated","storage":"item:temp","interpret":true}]

# 図鑑用アイテムの更新
    summon text_display ~ ~ ~ {text:'[{"score":{"objective":"Temporary","name":"$Int"}},".",{"score":{"objective":"Temporary","name":"$Dec10"}},{"score":{"objective":"Temporary","name":"$Dec1"}}]',UUID:[I; 2106,5308417,0,2]}
    execute if score $RNG Temporary >= $BiggestRN Temporary store result storage item: zukanData.Fish.Biggest int 1 run scoreboard players get $RNG Temporary
    execute if score $RNG Temporary >= $BiggestRN Temporary run data modify storage item: zukanData.Fish.Size set from entity 83a-51-1-0-2 text
    execute if score $RNG Temporary >= $BiggestRN Temporary run data modify storage item: zukanData.Fish.Crown set from storage item:temp Data.Crown
    execute store result storage item: zukanData.Fish.Count int 1 run scoreboard players add $Count Temporary 1
    execute in minecraft:overworld run data modify block 276 -32 -414 Items[{tag:{CustomModelData:1016}}].tag set from storage item: zukanData

# リセット
    scoreboard players reset $MaxSize Temporary
    scoreboard players reset $MinSize Temporary
    scoreboard players reset $Count Temporary
    scoreboard players reset $BiggestRN Temporary
    scoreboard players reset $RNG Temporary
    scoreboard players reset $SilverSizeR Temporary
    scoreboard players reset $SilverSize Temporary
    scoreboard players reset $GoldSizeR Temporary
    scoreboard players reset $GoldSize Temporary
    scoreboard players reset $Int Temporary
    scoreboard players reset $Dec10 Temporary
    scoreboard players reset $Dec1 Temporary
    data remove storage item: zukanData
    data remove storage item:temp Data
    kill 83a-51-1-0-2