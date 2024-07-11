#> asset:npc/005.talky/interact
# NPCにinteractした際の処理

# プレイヤーごとの会話文管理
    loot replace block 0 0 0 container.0 loot lib:get_mcid
    data modify storage player: MCID set from block 0 0 0 Items[0].components.minecraft:profile.name
    execute as @n[type=villager,tag=005.talky] run function asset:npc/dialogue/get_id with storage player:

# 会話文の表示
    execute store result score $DialogueID Temporary run data get storage npc: dialogue.id
    function asset:npc/005.talky/dialogue/_ with storage npc: dialogue
    execute store result storage npc: dialogue.id int 1 run scoreboard players get $DialogueID Temporary

# プレイヤーごとの会話文の進捗を保存
    execute as @n[type=villager,tag=005.talky] run function asset:npc/dialogue/set_id with storage player:

# リセット
    data remove storage player: MCID
    data remove storage npc: dialogue
    scoreboard players reset $NPCTalked Temporary
    scoreboard players reset $DialogueID Temporary
    advancement revoke @s only asset:npc/005.talky