#> item:fishing/loot
# 釣った魚のデータの生成

# 溶岩で燃えないように
    data modify entity @s Invulnerable set value 1b

# 図鑑用のver更新
    execute store result score $FishZukanID Temporary run data get storage global: fish.zukan_ver
    execute store result storage global: fish.zukan_ver int 1 run scoreboard players add $FishZukanID Temporary 1
    scoreboard players reset $FishZukanID Temporary

# 図鑑用count+1
    $execute store result score $Count Temporary run data get storage zukan:fish Data[{id:$(id)}].count
    execute store result storage item: Fish.count int 1 run scoreboard players add $Count Temporary 1
    data modify storage item: Fish.count set from storage item: Fish.count

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
        execute if score $Size Temporary >= $SilverSize Temporary run data modify storage item: Fish.crown set value "🥈"
        execute if score $Size Temporary >= $SilverSize Temporary run playsound resource:custom.levelup master @a ~ ~ ~ 0.2 0.9
        execute if score $Size Temporary >= $SilverSize Temporary run particle totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.5 50 force
    # 金サイズ（約5%）
        execute store result score $GoldSize Temporary run data get storage item: Fish.max
        $scoreboard players remove $GoldSize Temporary $(min)
        scoreboard players operation $GoldSize Temporary /= #-20 Constant
        $scoreboard players add $GoldSize Temporary $(max)
        execute if score $Size Temporary >= $GoldSize Temporary run data modify storage item: Fish.crown set value "🥇"
        execute if score $Size Temporary >= $GoldSize Temporary run playsound resource:custom.levelup master @a ~ ~ ~ 0.25 1.2
        execute if score $Size Temporary >= $GoldSize Temporary run particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0.8 100 force

# 経験値を与える
    scoreboard players operation $SizeToEXP Temporary = $Size Temporary
    scoreboard players operation $SizeToEXP Temporary /= #100 Constant
    scoreboard players operation @p[advancements={player:trigger/used_item/fishing_rod=true}] EXPGained += $SizeToEXP Temporary

# 釣った魚のデータをチャットに表示
    data modify storage item: Data set from entity @s Item.components
    data modify storage item: Data.text.int set string storage item: Fish.size 0 -2
    data modify storage item: Data.text.dec set string storage item: Fish.size -2
    execute if score $Count Temporary matches 1 run data modify storage item: Data.text.new set value '{"text":" NEW!","bold":true,"color":"#F3E478"}'
    execute if entity @s[tag=NewRecord] run data modify storage item: Data.text.new_record set value '{"text":" ‐最大サイズ更新‐","color":"gray"}'
    tellraw @p [{"nbt":"Fish.icon","storage":"item:","interpret":true},[{"text":" ","bold":true},{"nbt":"Data.minecraft:item_name","storage":"item:","interpret":true}," ×1"],{"nbt":"Data.text.new","storage":"item:","interpret":true},{"text":"\n\uF82A\uF804サイズ: "},{"nbt":"Fish.crown","storage":"item:"},"\uF822",{"nbt":"Data.text.int","storage":"item:"},".",{"nbt":"Data.text.dec","storage":"item:"},"\uF822cm",{"nbt":"Data.text.new_record","storage":"item:","interpret":true}]

# 魚の長さ(テキスト)生成
    summon text_display ~ ~1000 ~ {alignment:"left",Tags:["FishLength","AutoKill","Timer"],text:'[{"nbt":"Data.text.int","storage":"item:"},".",{"nbt":"Data.text.dec","storage":"item:"}]'}
    execute positioned ~ ~1000 ~ run data modify storage item: Fish.length set from entity @n[type=text_display,tag=FishLength,distance=..0.01] text
    execute positioned ~ ~1000 ~ run kill @n[type=text_display,tag=FishLength,distance=..0.01]

# 魚のデータ保存
    data remove storage item: Fish.max
    data remove storage item: Fish.min
    execute unless data storage item: Fish.crown run data modify storage item: Fish.crown set value "🥉"
    $execute unless entity @s[tag=NewRecord] run data modify storage item: Fish.crown set from storage zukan:fish Data[{id:$(id)}].crown
    $execute unless entity @s[tag=NewRecord] run data modify storage item: Fish.length set from storage zukan:fish Data[{id:$(id)}].length
    $execute unless entity @s[tag=NewRecord] run data modify storage item: Fish.size set from storage zukan:fish Data[{id:$(id)}].size
    $data modify storage zukan:fish Data[{id:$(id)}] set from storage item: Fish

# Motion
    data modify entity @s Motion set from storage item: Motion
    execute as @e[type=item,distance=..0] run damage @s 0.0 generic

# リセット
    scoreboard players reset $Count Temporary
    scoreboard players reset $Size Temporary
    scoreboard players reset $RecordSize Temporary
    scoreboard players reset $SilverSize Temporary
    scoreboard players reset $GoldSize Temporary
    scoreboard players reset $SizeToEXP Temporary
    data remove storage item: Data