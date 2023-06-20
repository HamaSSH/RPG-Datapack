#> asset:mob/000.example/summon/_
# 召喚処理

# 元のモブの召喚
    summon skeleton ~ ~ ~ {NoAI:1b,Silent:1b,Team:Enemy,Tags:["MobInit"],DeathLootTable:"asset:mob/death/000.example",ActiveEffects:[{Id:2,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}

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
        data modify storage asset:mob Data.Status.lv set value 1
        data modify storage asset:mob Data.Status.hp set value 1000
        data modify storage asset:mob Data.Status.ad set value 0
        data modify storage asset:mob Data.Status.xp set value 0

# データの適用
    execute as @e[type=skeleton,tag=MobInit,distance=..0.01,limit=1] run function mob:summon/set_data