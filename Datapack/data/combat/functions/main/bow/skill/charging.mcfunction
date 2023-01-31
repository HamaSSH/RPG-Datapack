##########
#>
#

# 溜め攻撃チャージ中の演出
    execute if score @s BowCharge matches 28..32 run particle crit ~ ~0. ~ 0.3 0.3 0.3 0.1 3 force
    execute if score @s BowCharge matches 28..32 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.05 1.4
    execute if score @s BowCharge matches 33..36 run particle crit ~ ~0. ~ 0.3 0.3 0.3 0.2 5 force
    execute if score @s BowCharge matches 33..36 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.075 1.4
    execute if score @s BowCharge matches 37..39 run particle crit ~ ~0. ~ 0.4 0.4 0.4 0.3 8 force
    execute if score @s BowCharge matches 37..39 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.1 1.4
    execute if score @s BowCharge matches 40 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.5
    execute if score @s BowCharge matches 41.. run particle crit ~ ~0. ~ 0.5 0.5 0.5 0.5 12 force
    execute if score @s BowCharge matches 41.. run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.15 1.4
    execute if score @s BowCharge matches 41.. if entity @s[tag=BowSkillOnCD] run function combat:main/bow/skill/was_on_cd