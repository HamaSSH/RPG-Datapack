#> asset:npc/300.example/dialogue/_
# NPCの会話文の処理

# プレイヤーの方向を向く
    tag @s add Dialogue
    execute as @e[type=villager,tag=300.NPC,limit=1] at @s run tp @s ~ ~ ~ facing entity @p[tag=Dialogue]

# クエストを与える
    tellraw @s "[ムラビト] よろしく頼む。"
    function asset:quest/600.example/give

# リセット
    advancement revoke @s only asset:npc/300.example
    tag @s remove Dialogue