# 更にHP/MP_REGEN補正
    scoreboard players operation $HPRegen Temporary *= #4 Constant
    scoreboard players operation $MPRegen Temporary *= #4 Constant
    scoreboard players operation @s hp_regen_class += $HPRegen Temporary
    scoreboard players operation @s mp_regen_class += $MPRegen Temporary
# 演出
    execute if score @s InCombat matches -1 run playsound resource:custom.levelup master @s ~ ~ ~ 0.7 2
    execute if score @s InCombat matches -1 run particle totem_of_undying ~ ~0.5 ~ 0.3 0.6 0.3 0.1 30 force