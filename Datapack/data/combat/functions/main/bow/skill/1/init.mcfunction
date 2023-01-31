##########
#>
#

# 弓矢にタグを付ける
    execute unless predicate core:is_sneaking positioned ~ ~1.52 ~ as @e[type=arrow,distance=..0.6] run function combat:main/bow/skill/1/arrow
    execute if predicate core:is_sneaking positioned ~ ~1.16 ~ as @e[type=arrow,distance=..0.2] run function combat:main/bow/skill/1/arrow
# クールダウン
    scoreboard players set @s skill_cd 300
# 演出(弓溜め1初期)
    playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 0.6 1.3
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 0.4 0.8