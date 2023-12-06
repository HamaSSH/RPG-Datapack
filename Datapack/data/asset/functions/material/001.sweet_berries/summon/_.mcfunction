#> asset:material/001.sweet_berries/summon/_
# 召喚処理

# モデルの召喚
    setblock ~ ~ ~ dead_horn_coral[waterlogged=false]
    summon armor_stand ~ ~ ~ {Tags:["MaterialInit"],Invisible:1b,Invulnerable:1b,Marker:1b}

# データの設定
    data modify storage asset:material Data.MaterialID set value 1
    data modify storage asset:material Data.LootTable set value "asset:material/001.sweet_berries"
    data modify storage asset:material Data.HP set value 5

# データの適用
    execute as @e[type=armor_stand,tag=MaterialInit,distance=..0.01,limit=1] run function item:material/summon/set_data