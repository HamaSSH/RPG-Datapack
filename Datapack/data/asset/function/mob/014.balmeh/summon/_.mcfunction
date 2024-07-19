#> asset:mob/014.balmeh/summon/_
# 召喚処理

# 元のモブの召喚
    summon sheep ~ ~ ~ {Tags:["MobInit"],Passengers:[{id:"silverfish",Tags:["Controller"]}]}

# データの設定
    data modify storage asset:mob Data.MobID set value 14
    data modify storage asset:mob Data.namespace set value "014.balmeh"
    # 名前
        data modify storage asset:mob Data.CustomName set value '{"text":"バルメェ"}'
        data modify storage asset:mob Data.NameChar set value 4
    # 装備
        data modify storage asset:mob Data.Head set value {}
        data modify storage asset:mob Data.Chest set value {}
        data modify storage asset:mob Data.Legs set value {}
        data modify storage asset:mob Data.Feet set value {}
        data modify storage asset:mob Data.Mainhand set value {}
        data modify storage asset:mob Data.Offhand set value {}
    # ステータス
        data modify storage asset:mob Data.Status.LVL set value 1
        data modify storage asset:mob Data.Status.HP set value 70
        data modify storage asset:mob Data.Status.DEF set value 0
        data modify storage asset:mob Data.Status.Dmg set value 10
        data modify storage asset:mob Data.Status.EXP set value 10
        data modify storage asset:mob Data.Status.Gold set value 10
        data modify storage asset:mob Data.Status.AGI set value 120
        data modify storage asset:mob Data.scale set value 120

# データの適用
    execute as @e[type=sheep,tag=MobInit,distance=..0.01,limit=1] run function mob:summon/init/_