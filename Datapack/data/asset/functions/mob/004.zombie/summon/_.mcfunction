#> asset:mob/004.zombie/summon/_
# 召喚処理

# 元のモブの召喚
    summon zombie ~ ~ ~ {Team:Enemy,Tags:["MobInit"],DeathLootTable:"asset:mob/death/004.zombie"}

# データの設定
    data modify storage asset:mob Data.MobID set value 2
    # 名前
        data modify storage asset:mob Data.CustomName set value '{"text":"ゾンビ"}'
        data modify storage asset:mob Data.NameChar set value 3
    # 装備
        data modify storage asset:mob Data.Head set value {}
        data modify storage asset:mob Data.Chest set value {}
        data modify storage asset:mob Data.Legs set value {}
        data modify storage asset:mob Data.Feet set value {}
        data modify storage asset:mob Data.Mainhand set value {}
        data modify storage asset:mob Data.Offhand set value {}
    # ステータス
        data modify storage asset:mob Data.Status.lv set value 5
        data modify storage asset:mob Data.Status.hp set value 100
        data modify storage asset:mob Data.Status.ad set value 10
        data modify storage asset:mob Data.Status.xp set value 15
        data modify storage asset:mob Data.Status.spd set value 90

# データの適用
    execute as @e[type=zombie,tag=MobInit,distance=..0.01,limit=1] run function mob:summon/set_data