#> asset:mob/003.slime/summon/_
# 召喚処理

# 元のモブの召喚
    summon slime ~ ~ ~ {Tags:["MobInit"]}

# データの設定
    data modify storage asset:mob Data.MobID set value 3
    data modify storage asset:mob Data.namespace set value "003.slime"
    # 名前
        data modify storage asset:mob Data.CustomName set value '{"text":"スライム"}'
        data modify storage asset:mob Data.NameChar set value 4
    # 装備
        data modify storage asset:mob Data.Head set value {}
        data modify storage asset:mob Data.Chest set value {}
        data modify storage asset:mob Data.Legs set value {}
        data modify storage asset:mob Data.Feet set value {}
        data modify storage asset:mob Data.Mainhand set value {}
        data modify storage asset:mob Data.Offhand set value {}
    # ステータス
        data modify storage asset:mob Data.Status.LVL set value 3
        data modify storage asset:mob Data.Status.HP set value 50
        data modify storage asset:mob Data.Status.DEF set value 0
        data modify storage asset:mob Data.Status.Dmg set value 10
        data modify storage asset:mob Data.Status.EXP set value 12
        data modify storage asset:mob Data.Status.Gold set value 5
        data modify storage asset:mob Data.Status.AGI set value 100
        data modify storage asset:mob Data.scale set value 100

# データの適用
    execute as @e[type=slime,tag=MobInit,distance=..0.01,limit=1] run function asset:mob/003.slime/summon/init