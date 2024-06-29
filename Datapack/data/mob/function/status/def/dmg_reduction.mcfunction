#> mob:status/def/dmg_reduction
# モブの防御力によるダメージ軽減計算

# 防御計算式 → DmgReceived = DmgReceived * (100 - DEF) 例：95→81 50→40 30→22
    scoreboard players operation $MobDEF Temporary -= @s DEF
    execute if data storage lib: Damage{Critical:1b} run scoreboard players operation $MobDEF Temporary *= #9 Constant
    execute if data storage lib: Damage{Critical:1b} run scoreboard players operation $MobDEF Temporary /= #10 Constant
    execute if data storage lib: Damage{Critical:1b} run scoreboard players add $MobDEF Temporary 5
    scoreboard players add $MobDEF Temporary 100
    # 小数点第一位繰り上げ
        scoreboard players operation @s DmgReceived *= $MobDEF Temporary
        scoreboard players add @s DmgReceived 100
        scoreboard players operation @s DmgReceived /= #100 Constant
        execute if data storage lib: Damage{Critical:1b} run scoreboard players add @s DmgReceived 5

# リセット
    scoreboard players reset $MobDEF Temporary