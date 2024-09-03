#> asset:magic/5203.bubble_blast/player/_
# 魔法を発動した後のプレイヤーのtick処理

scoreboard players add @s 5203.Tick 1
execute if score @s 5203.Tick matches 1 run function asset:magic/5203.bubble_blast/player/bubble/summon
execute if score @s 5203.Tick matches 2 run function asset:magic/5203.bubble_blast/player/bubble/summon
execute if score @s 5203.Tick matches 3 run function asset:magic/5203.bubble_blast/player/bubble/summon
execute if score @s 5203.Tick matches 4 run function asset:magic/5203.bubble_blast/player/bubble/summon
execute if score @s 5203.Tick matches 5 run function asset:magic/5203.bubble_blast/player/bubble/summon
execute if score @s 5203.Tick matches 6 run function asset:magic/5203.bubble_blast/player/bubble/summon