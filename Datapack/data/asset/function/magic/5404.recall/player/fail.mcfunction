#> asset:magic/5404.recall/player/fail
# 動きが検知されたらリコールをキャンセル

tellraw @s "─ 移動したため「リコール」がキャンセルされました。"
playsound block.glass.break master @a ~ ~ ~ 1 1.4
scoreboard players reset @s 5404.Tick