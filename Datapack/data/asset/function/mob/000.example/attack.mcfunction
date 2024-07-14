#> asset:mob/000.example/attack
# 攻撃時の動作

playsound entity.wither_skeleton.step hostile @a
tellraw @a ["",{"text":"攻撃 → "},{"selector":"@a[tag=Victim]"}]