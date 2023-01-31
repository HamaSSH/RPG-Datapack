##########
#>
#

# スキル使用者のタグ付け
    tag @s add this
# 属性ごとの弾
    execute if entity @s[tag=NeutralWandSkill] run function magic:asset/5102.homing_fire/_
    execute if entity @s[tag=FireWandSkill] run function magic:asset/5102.homing_fire/_
    execute if entity @s[tag=WaterWandSkill] run function magic:asset/5202.homing_water/_
    execute if entity @s[tag=ThunderWandSkill] run function magic:asset/5302.homing_thunder/_
    execute if entity @s[tag=EarthWandSkill] run function magic:asset/5402.homing_earth/_
    execute if entity @s[tag=WindWandSkill] run function magic:asset/5502.homing_wind/_
# 向き調整
    execute positioned ~ ~1.5 ~ as @e[type=area_effect_cloud,tag=WandSkill,distance=..0.01] run tp @s ~ ~ ~ ~-20 ~2
# リセット
    tag @s remove this