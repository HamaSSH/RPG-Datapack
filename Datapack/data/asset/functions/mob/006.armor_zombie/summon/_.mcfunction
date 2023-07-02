#> asset:mob/006.armor_zombie/summon/_
# 召喚処理

# 元のモブの召喚
    summon zombie ~ ~ ~ {Team:Enemy,Tags:["MobInit"],DeathLootTable:"asset:mob/death/006.armor_zombie"}

# データの設定
    data modify storage asset:mob Data.MobID set value 2
    # 名前
        data modify storage asset:mob Data.CustomName set value '{"text":"アーマーゾンビ"}'
        data modify storage asset:mob Data.NameChar set value 7
    # 装備
        data modify storage asset:mob Data.Head set value {id:"minecraft:iron_helmet",Count:1b}
        data modify storage asset:mob Data.Chest set value {id:"minecraft:iron_chestplate",Count:1b}
        data modify storage asset:mob Data.Legs set value {}
        data modify storage asset:mob Data.Feet set value {}
        data modify storage asset:mob Data.Mainhand set value {}
        data modify storage asset:mob Data.Offhand set value {}
    # ステータス
        data modify storage asset:mob Data.Status.lv set value 13
        data modify storage asset:mob Data.Status.hp set value 220
        data modify storage asset:mob Data.Status.ad set value 30
        data modify storage asset:mob Data.Status.xp set value 65
        data modify storage asset:mob Data.Status.spd set value 80

# データの適用
    execute as @e[type=zombie,tag=MobInit,distance=..0.01,limit=1] run function mob:summon/set_data