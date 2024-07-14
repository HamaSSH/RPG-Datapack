#> asset:mob/009.wither_skeleton/summon/_
# 召喚処理

# 元のモブの召喚
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit"],DeathLootTable:"asset:mob/death/009.wither_skeleton"}

# データの設定
    data modify storage asset:mob Data.MobID set value 9
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
        data modify storage asset:mob Data.Status.HP set value 80
        data modify storage asset:mob Data.Status.DEF set value 0
        data modify storage asset:mob Data.Status.Dmg set value 5
        data modify storage asset:mob Data.Status.EXP set value 15
        data modify storage asset:mob Data.Status.Gold set value 10
        data modify storage asset:mob Data.Status.AGI set value 100

# データの適用
    execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01,limit=1] run function mob:summon/init/_