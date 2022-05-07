# 弓矢にタグを付ける
    execute unless predicate core:is_sneaking positioned ~ ~1.52 ~ as @e[type=arrow,distance=..0.6] run function attack:main/bow/skill/2/arrow
    execute if predicate core:is_sneaking positioned ~ ~1.16 ~ as @e[type=arrow,distance=..0.2] run function attack:main/bow/skill/2/arrow
# クールダウン
    scoreboard players set @s skill_cd 300
# 演出(弓溜め2初期)
    playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 0.6 1.3
    playsound entity.wither.shoot master @a ~ ~ ~ 1.0 1.8