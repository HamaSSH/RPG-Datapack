#> asset:mob/013.gmoo/summon/_
# 召喚処理

# 元のモブの召喚
    summon cow ~ ~ ~ {Tags:["MobInit"],DeathLootTable:"asset:mob/death/013.gmoo",Passengers:[{id:"silverfish",Silent:1b,Tags:["AutoKill","HasVehicle","Controller"]}]}

# データの設定
    data modify storage asset:mob Data.MobID set value 13
    # 名前
        data modify storage asset:mob Data.CustomName set value '{"text":"グモー"}'
        data modify storage asset:mob Data.NameChar set value 3
    # 装備
        data modify storage asset:mob Data.Head set value {}
        data modify storage asset:mob Data.Chest set value {}
        data modify storage asset:mob Data.Legs set value {}
        data modify storage asset:mob Data.Feet set value {}
        data modify storage asset:mob Data.Mainhand set value {}
        data modify storage asset:mob Data.Offhand set value {}
    # ステータス
        data modify storage asset:mob Data.Status.LVL set value 1
        data modify storage asset:mob Data.Status.HP set value 30
        data modify storage asset:mob Data.Status.DEF set value 0
        data modify storage asset:mob Data.Status.Dmg set value 10
        data modify storage asset:mob Data.Status.EXP set value 10
        data modify storage asset:mob Data.Status.Gold set value 10
        data modify storage asset:mob Data.Status.AGI set value 150

# データの適用
    execute as @e[type=cow,tag=MobInit,distance=..0.01,limit=1] run function mob:summon/set_data