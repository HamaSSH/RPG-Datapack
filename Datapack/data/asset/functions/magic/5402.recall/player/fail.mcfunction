#> asset:magic/5402.recall/player/fail
# 動きが検知されたらリコールをキャンセル

tellraw @s "─ 移動したため「リコール」がキャンセルされました。\n"
playsound block.glass.break master @a ~ ~ ~ 1 1.4
scoreboard players reset @s 5402.Tick