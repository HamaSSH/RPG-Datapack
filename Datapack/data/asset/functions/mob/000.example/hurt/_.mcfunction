#> asset:mob/000.example/hurt/_
# 被ダメージ時の動作

playsound entity.skeleton.hurt hostile @a
tellraw @a ["",{"text":"被ダメージ"},{"score":{"name":"@s","objective":"dmg_received"}}," ← ",{"selector":"@a[tag=Attacker]"}]