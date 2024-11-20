#> asset:npc/rinne/summon
# 村人NPCの召喚

summon villager ~ ~ ~ {Tags:["NPCInit"]}

# データの設定
    # ID
        data modify storage asset:npc Data.namespace set value "rinne"
        data modify storage asset:npc Data.npc_type set value "ClassNPC"
    # 名前
        data modify storage asset:npc Data.CustomName set value '"リンネ"'

# データの適用
    execute as @e[type=villager,tag=NPCInit,distance=..0.01,limit=1] run function asset:npc/set_data with storage asset:npc Data