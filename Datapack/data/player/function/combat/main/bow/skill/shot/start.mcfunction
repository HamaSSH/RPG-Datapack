#> player:combat/main/bow/skill/shot/start
# ため攻撃開始

scoreboard players remove @s MP 20
scoreboard players set @s SkillTimer 400
execute positioned ~ ~1.52 ~ as @e[type=arrow,tag=Flying,distance=..5] if score @s PlayerID = @p[tag=Shooter] PlayerID run function player:combat/main/bow/skill/shot/init
tag @s remove MPCheckPass

# 演出
    playsound entity.zombie.attack_iron_door master @a ~ ~ ~ 0.6 1.3
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 0.4 0.8