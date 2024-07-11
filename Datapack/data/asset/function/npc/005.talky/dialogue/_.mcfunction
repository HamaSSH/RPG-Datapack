#> asset:npc/005.talky/dialogue/_
# 会話文の表示

data modify storage npc: CustomName set from entity @n[type=villager,tag=005.talky] CustomName
$execute store success score $NPCTalked Temporary run function asset:npc/005.talky/dialogue/$(id)
data remove storage npc: CustomName

# 会話文を進める
    execute if score $NPCTalked Temporary matches 1 run scoreboard players add $DialogueID Temporary 1
    execute if score $NPCTalked Temporary matches 0 run scoreboard players set $DialogueID Temporary 0
    execute store result storage npc: dialogue.id int 1 run scoreboard players get $DialogueID Temporary
    execute if score $NPCTalked Temporary matches 0 run function asset:npc/005.talky/dialogue/_ with storage npc: dialogue