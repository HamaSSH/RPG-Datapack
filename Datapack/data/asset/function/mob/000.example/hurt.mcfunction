#> asset:mob/000.example/hurt
# 被ダメージ時の動作

playsound entity.skeleton.hurt hostile @a
execute at @a if score @s PlayerID = @p PlayerID run tag @p add 000.Attacker
tellraw @a ["",{"text":"被ダメージ"},{"score":{"name":"@s","objective":"DmgReceived"}}," ← ",{"selector":"@a[tag=000.Attacker]"},", Health: ",{"nbt":"Health","entity":"@s"}]
tag @a remove 000.Attacker