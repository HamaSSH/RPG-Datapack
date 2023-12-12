#> player:combat/main/bow/skill/meteor/start
# ため攻撃開始

scoreboard players set @s SkillTimer 400
execute positioned ~ ~1.52 ~ as @e[type=arrow,tag=Flying,distance=..5] if score @s PlayerID = @p[tag=Shooter] PlayerID run function player:combat/main/bow/skill/meteor/init
tag @s remove MPCheckPass

# 演出
    playsound entity.zombie.attack_iron_door master @a ~ ~ ~ 0.6 1.3
    playsound entity.wither.shoot master @a ~ ~ ~ 1.0 1.8