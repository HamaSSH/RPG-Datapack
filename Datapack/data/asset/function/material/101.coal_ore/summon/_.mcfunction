#> asset:material/101.coal_ore/summon/_
# 召喚処理

# モデルの召喚
    setblock ~ ~ ~ coal_ore
    execute align xyz positioned ~0.5 ~0.8 ~0.5 run summon armor_stand ~ ~ ~ {Tags:["MaterialInit"],Invisible:1b,Invulnerable:1b,Marker:1b}

# データの設定
    data modify storage asset:material Data.MaterialID set value 101
    data modify storage asset:material Data.LootTable set value "asset:material/101.coal_ore"
    data modify storage asset:material Data.HP set value 4

# データの適用
    execute align xyz positioned ~0.5 ~0.8 ~0.5 as @e[type=armor_stand,tag=MaterialInit,distance=..0.01,limit=1] run function item:material/summon/set_data