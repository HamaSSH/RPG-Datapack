#> asset:mob/wither_skeleton/summon
# 召喚処理

# 元のモブの召喚
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit"]}

# データの設定
    data modify storage asset:mob Data.MobID set value 9
    data modify storage asset:mob Data.namespace set value "wither_skeleton"
    # 名前
        data modify storage asset:mob Data.CustomName set value '{"text":"ウィザースケルトン"}'
        data modify storage asset:mob Data.NameChar set value 9
    # 装備
        data modify storage asset:mob Data.Head set value {}
        data modify storage asset:mob Data.Chest set value {}
        data modify storage asset:mob Data.Legs set value {}
        data modify storage asset:mob Data.Feet set value {}
        data modify storage asset:mob Data.Mainhand set value {id:"stone_sword"}
        data modify storage asset:mob Data.Offhand set value {}
    # ステータス
        data modify storage asset:mob Data.Status.LVL set value 5
        data modify storage asset:mob Data.Status.HP set value 150
        data modify storage asset:mob Data.Status.DEF set value 30
        data modify storage asset:mob Data.Status.Dmg set value 14
        data modify storage asset:mob Data.Status.EXP set value 25
        data modify storage asset:mob Data.Status.Gold set value 23
        data modify storage asset:mob Data.Status.AGI set value 90
        data modify storage asset:mob Data.scale set value 100
        data modify storage asset:mob Data.Status.KBR set value 0

# データの適用
    execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01,limit=1] run function mob:summon/init/_