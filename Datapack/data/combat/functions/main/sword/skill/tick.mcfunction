# 回転切り
    execute if score @s skill_cd matches 292..300 run function combat:main/sword/skill/_
    execute if score @s skill_cd matches 292..299 if score @s ThunderAttack matches 1.. run tp @s ~ ~ ~ ~135 ~
    execute if score @s skill_cd matches 292..299 unless score @s ThunderAttack matches 1.. run tp @s ~ ~ ~ ~45 ~
    execute if score @s skill_cd matches 292 run function combat:main/sword/skill/reset