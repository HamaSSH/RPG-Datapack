#> item:fishing/loot
# 釣った魚のデータの生成

# 溶岩で燃えないように
    data modify entity @s Invulnerable set value 1b

# 図鑑用count+1
    $execute store result score $Count Temporary run data get storage zukan:fish Data[{id:$(id)}].count
    execute store result storage item: Fish.count int 1 run scoreboard players add $Count Temporary 1

# 魚のサイズの抽選
    $execute store result score $Size Temporary run random value $(min)..$(max)
    execute store result storage item: Fish.size int 1 run scoreboard players get $Size Temporary
    $execute store result score $RecordSize Temporary run data get storage zukan:fish Data[{id:$(id)}].size
    execute if score $Size Temporary > $RecordSize Temporary run tag @s add NewRecord

# サイズの判定
    # 銀サイズ（約20%）
        execute store result score $SilverSize Temporary run data get storage item: Fish.max
        $scoreboard players remove $SilverSize Temporary $(min)
        scoreboard players operation $SilverSize Temporary /= #-5 Constant
        $scoreboard players add $SilverSize Temporary $(max)
        execute if score $Size Temporary >= $SilverSize Temporary run data modify storage item: Fish.crown set value '{"text":"\\uE18D","color":"#B9B9B9"}'
        execute if score $Size Temporary >= $SilverSize Temporary run playsound resource:custom.levelup master @a ~ ~ ~ 0.2 0.9
        execute if score $Size Temporary >= $SilverSize Temporary run particle totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.5 50 force
    # 金サイズ（約5%）
        execute store result score $GoldSize Temporary run data get storage item: Fish.max
        $scoreboard players remove $GoldSize Temporary $(min)
        scoreboard players operation $GoldSize Temporary /= #-20 Constant
        $scoreboard players add $GoldSize Temporary $(max)
        execute if score $Size Temporary >= $GoldSize Temporary run data modify storage item: Fish.crown set value '{"text":"\\uE18D","color":"#F1D604"}'
        execute if score $Size Temporary >= $GoldSize Temporary run playsound resource:custom.levelup master @a ~ ~ ~ 0.25 1.2
        execute if score $Size Temporary >= $GoldSize Temporary run particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0.8 100 force

# 釣った魚のデータをチャットに表示
    data modify storage item: Data set from entity @s Item.components
    data modify storage item: Data.text.int set string storage item: Fish.size 0 -2
    data modify storage item: Data.text.dec set string storage item: Fish.size -2
    execute if score $Count Temporary matches 1 run data modify storage item: Data.text.new set value '{"text":" NEW!","bold":true,"color":"#F3E478"}'
    execute if entity @s[tag=NewRecord] run data modify storage item: Data.text.new_record set value '{"text":" ‐最大サイズ更新‐","color":"gray"}'
    $data modify storage item: Data.text.fish_print set value '"\\u$(id)"'
    tellraw @p [{"nbt":"Data.text.fish_print","storage":"item:","interpret":true},[{"text":" ","bold":true},{"nbt":"Data.minecraft:item_name","storage":"item:","interpret":true}," ×1"],{"nbt":"Data.text.new","storage":"item:","interpret":true},{"text":"\n\uF82A\uF804サイズ: "},{"nbt":"Fish.crown","storage":"item:","interpret":true},"\uF822",{"nbt":"Data.text.int","storage":"item:"},".",{"nbt":"Data.text.dec","storage":"item:"},"\uF822cm",{"nbt":"Data.text.new_record","storage":"item:","interpret":true}]

# 図鑑にデータ格納
    $execute unless entity @s[tag=NewRecord] run data modify storage item: Fish.size set from storage zukan:fish Data[{id:$(id)}].size
    execute if score $Count Temporary matches 1 run data modify storage zukan:fish Data append from storage item: Fish
    $execute if score $Count Temporary matches 2.. run data modify storage zukan:fish Data[{id:$(id)}] set from storage item: Fish

# Motion
    data modify entity @s Motion set from storage item: Motion
    execute as @e[type=item,distance=..0] run damage @s 0.0 generic

# リセット
    scoreboard players reset $Count Temporary
    scoreboard players reset $Size Temporary
    scoreboard players reset $RecordSize Temporary
    scoreboard players reset $SilverSize Temporary
    scoreboard players reset $GoldSize Temporary
    data remove storage item: Data