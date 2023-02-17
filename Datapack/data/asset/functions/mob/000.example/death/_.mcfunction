#> asset:mob/000.example/death/_
# 死亡時の動作

playsound entity.skeleton.death hostile @a
tellraw @a ["",{"text":"トドメ ← "},{"selector":"@a[tag=Attacker]"},{"text":"に殺られました"}]