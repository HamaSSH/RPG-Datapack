#> asset:mob/000.example/summon/_
# 召喚処理

# 元のモブの召喚
    summon skeleton ~ ~ ~ {NoAI:1b,Silent:1b,Tags:["MobInit"],DeathLootTable:"asset:mob/death/000.example",ActiveEffects:[{Id:2,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}

# データの設定
    data modify storage asset:mob Data.MobID set value 0
    # 名前
        data modify storage asset:mob Data.CustomName set value '{"text":"サンドバッグ"}'
        data modify storage asset:mob Data.NameChar set value 6
    # 装備
        data modify storage asset:mob Data.Head set value {}
        data modify storage asset:mob Data.Chest set value {}
        data modify storage asset:mob Data.Legs set value {}
        data modify storage asset:mob Data.Feet set value {}
        data modify storage asset:mob Data.Mainhand set value {}
        data modify storage asset:mob Data.Offhand set value {}
    # ステータス
        data modify storage asset:mob Data.Status.LVL set value 1
        data modify storage asset:mob Data.Status.HP set value 1000
        data modify storage asset:mob Data.Status.DEF set value 50
        data modify storage asset:mob Data.Status.Dmg set value 10
        data modify storage asset:mob Data.Status.EXP set value 0
        data modify storage asset:mob Data.Status.Gold set value 0
        data modify storage asset:mob Data.Status.AGI set value 100

# データの適用
    execute as @e[type=skeleton,tag=MobInit,distance=..0.01,limit=1] run function mob:summon/set_data