#> asset:mob/008.stray_skull/summon/_
# 召喚処理

# 元のモブの召喚
    summon silverfish ~ ~ ~ {Silent:1b,Tags:["MobInit"],Passengers:[{id:"magma_cube",Tags:["Hitbox"]},{id:"armor_stand",Tags:["CustomModel"],ArmorItems:[{},{},{},{id:"stick",components:{custom_model_data:10081}}]}]}

# データの設定
    data modify storage asset:mob Data.MobID set value 8
    data modify storage asset:mob Data.namespace set value "008.stray_skull"
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
        data modify storage asset:mob Data.Status.Dmg set value 9
        data modify storage asset:mob Data.Status.EXP set value 30
        data modify storage asset:mob Data.Status.Gold set value 8
        data modify storage asset:mob Data.Status.AGI set value 150
        data modify storage asset:mob Data.scale set value 130

# データの適用
    execute as @e[type=silverfish,tag=MobInit,distance=..0.01,limit=1] run function mob:summon/init/_