#> player:combat/main/dagger/skill/start
# ため攻撃開始

scoreboard players remove @s MP 20
scoreboard players set @s SkillTimer 400
tag @s add DaggerSkill
tag @s remove MPCheckPass
execute if predicate player:is_element/_ run advancement grant @s only asset:achievement/1.3

# 最初の一撃＋演出
    function player:combat/main/dagger/charged
    playsound entity.zombie.attack_iron_door master @a ~ ~ ~ 0.6 1.3
    playsound item.trident.thunder master @a ~ ~ ~ 0.3 2.0