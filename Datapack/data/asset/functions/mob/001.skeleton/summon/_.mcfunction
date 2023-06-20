#> asset:mob/001.skeleton/summon/_
# 召喚処理

# 元のモブの召喚
    summon skeleton ~ ~ ~ {Team:Enemy,Tags:["MobInit"],DeathLootTable:"asset:mob/death/001.skeleton"}

# データの設定
    data modify storage asset:mob Data.MobID set value 1
    # 名前
        data modify storage asset:mob Data.CustomName set value '{"text":"スケルトン"}'
        data modify storage asset:mob Data.NameChar set value 5
    # 装備
        data modify storage asset:mob Data.Head set value {}
        data modify storage asset:mob Data.Chest set value {}
        data modify storage asset:mob Data.Legs set value {}
        data modify storage asset:mob Data.Feet set value {}
        data modify storage asset:mob Data.Mainhand set value {}
        data modify storage asset:mob Data.Offhand set value {}
    # ステータス
        data modify storage asset:mob Data.Status.lv set value 1
        data modify storage asset:mob Data.Status.hp set value 100
        data modify storage asset:mob Data.Status.ad set value 5
        data modify storage asset:mob Data.Status.xp set value 15
        data modify storage asset:mob Data.Status.spd set value 80

# データの適用
    execute as @e[type=skeleton,tag=MobInit,distance=..0.01,limit=1] run function mob:summon/set_data