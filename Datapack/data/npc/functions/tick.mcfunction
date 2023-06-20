##########
#>
#

### NPC関連の#tick

# # tick時の処理 TODO: これを村人として実行すればtickとなる
#   execute store result storage asset:npc id int 1 run scoreboard players get @s MobID
#   execute at @s run function #asset:npc/tick
#   data remove storage asset:npc id

# NPCショップ召喚
    execute if predicate npc:001 run function npc:asset/001/shop/summon
    execute if predicate npc:002 run function npc:asset/002/shop/summon
    execute if predicate npc:003 run function npc:asset/003/class/summon
    execute if predicate npc:004 run function npc:asset/004/shop/summon
    execute if predicate npc:005 run function npc:asset/005/shop/summon
# プレイヤーの方向を向く村人
    execute if entity @e[type=villager,distance=..10] as @e[type=villager,distance=..10] at @s run tp @s ~ ~ ~ facing entity @p