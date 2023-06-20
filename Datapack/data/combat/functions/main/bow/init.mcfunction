##########
#>
#

# 弓の初期処理 属性付け
    execute if score @a[tag=this,limit=1] FireAttack matches 1.. run tag @s add FireAttack
    execute if score @a[tag=this,limit=1] WaterAttack matches 1.. run tag @s add WaterAttack
    execute if score @a[tag=this,limit=1] ThunderAttack matches 1.. run tag @s add ThunderAttack
    execute if score @a[tag=this,limit=1] EarthAttack matches 1.. run tag @s add EarthAttack
    execute if score @a[tag=this,limit=1] WindAttack matches 1.. run tag @s add WindAttack
    execute unless score @a[tag=this,limit=1] ElementAttack matches 1.. run tag @s add NeutralAttack
# タグ付け
    tag @s add Arrow