# 弾と攻撃したプレイヤーの紐づけ
    scoreboard players operation @s PlayerID = @a[tag=this,limit=1] PlayerID
    scoreboard players operation @s dmg_dealt = @a[tag=this,limit=1] dmg_dealt
    execute if entity @a[tag=this,tag=CriticalHit,limit=1] run tag @s add CriticalHit
    execute if entity @a[team=Wizard,tag=this,limit=1] run scoreboard players operation @s skill_level = @a[tag=this,limit=1] skill_level
# 属性付け
    execute if score @a[tag=this,limit=1] FireAttack matches 1.. run tag @s add FireAttack
    execute if score @a[tag=this,limit=1] WaterAttack matches 1.. run tag @s add WaterAttack
    execute if score @a[tag=this,limit=1] ThunderAttack matches 1.. run tag @s add ThunderAttack
    execute if score @a[tag=this,limit=1] EarthAttack matches 1.. run tag @s add EarthAttack
    execute if score @a[tag=this,limit=1] WindAttack matches 1.. run tag @s add WindAttack
    execute unless score @a[tag=this,limit=1] ElementAttack matches 1.. run tag @s add NeutralAttack
# 向きを合わせる
    execute rotated as @a[tag=this,limit=1] run tp @s ~ ~1.5 ~ ~ ~
# 初期タグ削除
    tag @s remove WandInit