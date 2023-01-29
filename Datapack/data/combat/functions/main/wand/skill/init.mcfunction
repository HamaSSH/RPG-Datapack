# 初期処理
    execute unless score @s ElementAttack matches 1.. run tag @s add NeutralWandSkill
    execute if score @s FireAttack matches 1.. run tag @s add FireWandSkill
    execute if score @s WaterAttack matches 1.. run tag @s add WaterWandSkill
    execute if score @s ThunderAttack matches 1.. run tag @s add ThunderWandSkill
    execute if score @s EarthAttack matches 1.. run tag @s add EarthWandSkill
    execute if score @s WindAttack matches 1.. run tag @s add WindWandSkill
# ループ処理
    tag @s add WandTick
# クールダウン
    scoreboard players set @s skill_cd 300