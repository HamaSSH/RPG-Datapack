#> asset:mob/klook/summon
# 召喚処理

# 元のモブの召喚
    summon chicken ~ ~ ~ {Tags:["MobInit"],Age:1000000000}

# データの設定
    data modify storage asset:mob Data.MobID set value 16
    data modify storage asset:mob Data.namespace set value "klook"
    # 名前
        data modify storage asset:mob Data.CustomName set value '{"text":"クルック"}'
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
        data modify storage asset:mob Data.Status.HP set value 80
        data modify storage asset:mob Data.Status.DEF set value 0
        data modify storage asset:mob Data.Status.Dmg set value 0
        data modify storage asset:mob Data.Status.EXP set value 10
        data modify storage asset:mob Data.Status.Gold set value 10
        data modify storage asset:mob Data.Status.AGI set value 120
        data modify storage asset:mob Data.scale set value 120
        data modify storage asset:mob Data.Status.KBR set value 0

# データの適用
    execute as @e[type=chicken,tag=MobInit,distance=..0.01,limit=1] run function mob:summon/init/_