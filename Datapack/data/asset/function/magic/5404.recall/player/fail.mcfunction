#> asset:magic/5404.recall/player/fail
# 動きが検知されたらリコールを中断

# 中断演出
    tellraw @s "▸移動したため「リコール」が中断されました。\n"
    playsound block.glass.break master @a ~ ~ ~ 1 1.4

# リセット
    scoreboard players reset @s 5404.Tick
    tag @s add MenuRecallUpdate
    tag @s remove MenuRecall