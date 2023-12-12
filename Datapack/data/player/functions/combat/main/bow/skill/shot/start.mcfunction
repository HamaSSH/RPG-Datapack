#> player:combat/main/bow/skill/shot/start
# ため攻撃開始

scoreboard players set @s SkillTimer 400
execute positioned ~ ~1.52 ~ as @e[type=arrow,tag=ArrowInit,distance=..5] if score @s PlayerID = @p[tag=Shooter] PlayerID run function player:combat/main/bow/skill/shot/init
tag @s remove MPCheckPass