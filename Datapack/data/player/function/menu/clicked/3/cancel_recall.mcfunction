#> player:menu/clicked/3/cancel_recall
# リコールの中断

# 中断演出
    tellraw @s "▸「リコール」が中断されました。\n"
    playsound block.glass.break master @a ~ ~ ~ 1 1.4

# リセット
    scoreboard players reset @s 5404.Tick
    tag @s remove MenuRecall

# 検知用アイテムの更新処理
    function player:menu/update