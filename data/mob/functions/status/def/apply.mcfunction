# 防御計算式 → dmg_received = dmg_received * (100 - def)
    scoreboard players operation $MobDef Temporary = @s def
    scoreboard players set $DamageCut Temporary 100
    scoreboard players operation $DamageCut Temporary -= $MobDef Temporary
# ダメージ適用
    scoreboard players operation @s dmg_received *= $DamageCut Temporary
    scoreboard players add @s dmg_received 50
    scoreboard players operation @s dmg_received /= #100 Constant
# リセット
    scoreboard players reset $MobDef
    scoreboard players reset $DamageCut