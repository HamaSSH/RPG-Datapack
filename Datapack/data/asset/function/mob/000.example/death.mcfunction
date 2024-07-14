#> asset:mob/000.example/death
# 死亡時の動作

playsound entity.skeleton.death hostile @a
execute at @a if score @s PlayerID = @p PlayerID run tag @p add 000.Killer
tellraw @a ["",{"text":"トドメ ← "},{"selector":"@a[tag=000.Killer]"},{"text":"に殺られました"}]
tag @a remove 000.Killer