#> asset:mob/005.oak_orc/summon/_
# 召喚処理

# 元のモブの召喚
    summon piglin ~ ~ ~ {IsImmuneToZombification:1b,Tags:["MobInit"],DeathLootTable:"asset:mob/death/005.oak_orc"}

# データの設定
    data modify storage asset:mob Data.MobID set value 5
    # 名前
        data modify storage asset:mob Data.CustomName set value '{"text":"オークオーク"}'
        data modify storage asset:mob Data.NameChar set value 6
    # 装備
        data modify storage asset:mob Data.Head set value {id:"oak_log",Count:1b}
        data modify storage asset:mob Data.Chest set value {}
        data modify storage asset:mob Data.Legs set value {}
        data modify storage asset:mob Data.Feet set value {}
        data modify storage asset:mob Data.Mainhand set value {}
        data modify storage asset:mob Data.Offhand set value {}
    # ステータス
        data modify storage asset:mob Data.Status.LVL set value 3
        data modify storage asset:mob Data.Status.HP set value 150
        data modify storage asset:mob Data.Status.Dmg set value 20
        data modify storage asset:mob Data.Status.EXP set value 50
        data modify storage asset:mob Data.Status.Gold set value 30
        data modify storage asset:mob Data.Status.AGI set value 50

# データの適用
    execute as @e[type=piglin,tag=MobInit,distance=..0.01,limit=1] run function mob:summon/set_data