#> asset:mob/002.skull/summon/_
# 召喚処理

# 元のモブの召喚 #TODO: カスタム当たり判定
    summon silverfish ~ ~ ~ {Silent:1b,Tags:["MobInit"],DeathLootTable:"asset:mob/death/002.skull",Passengers:[{id:"magma_cube",Silent:1b,Tags:["AutoKill","IsVehicle"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Tags:["AutoKill","IsVehicle"],ArmorItems:[{},{},{},{id:"cod",Count:1b,tag:{CustomModelData:4}}]}]}]}

# データの設定
    data modify storage asset:mob Data.MobID set value 2
    # 名前
        data modify storage asset:mob Data.CustomName set value '{"text":"スカル"}'
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
        data modify storage asset:mob Data.Status.HP set value 50
        data modify storage asset:mob Data.Status.DEF set value 0
        data modify storage asset:mob Data.Status.Dmg set value 4
        data modify storage asset:mob Data.Status.EXP set value 30
        data modify storage asset:mob Data.Status.Gold set value 8
        data modify storage asset:mob Data.Status.AGI set value 150

# データの適用
    execute as @e[type=silverfish,tag=MobInit,distance=..0.01,limit=1] run function mob:summon/set_data