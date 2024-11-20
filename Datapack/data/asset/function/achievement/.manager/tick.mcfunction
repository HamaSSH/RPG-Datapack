#> asset:achievement/.manager/tick
# 実績用のtick処理

# 一瞬でachiemenet0.1をはく奪する
    execute if entity @s[advancements={asset:achievement/0.1=true}] run scoreboard players add @s 0.1.RevokeTimer 1
    execute if score @s 0.1.RevokeTimer matches 2 run advancement revoke @s only asset:achievement/0.1
    execute if score @s 0.1.RevokeTimer matches 2.. run scoreboard players reset @s 0.1.RevokeTimer