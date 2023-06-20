##########
#>
#

# 防御計算式 → dmg_received = dmg_received / 1 + (def / 200)
# = 200*dmg_received / (200 + def)
    scoreboard players operation $PlayerDef Temporary = @s def
    scoreboard players add $PlayerDef Temporary 200
# 小数点第一位四捨五入
    scoreboard players operation @s dmg_received *= #2000 Constant
    scoreboard players operation @s dmg_received /= $PlayerDef Temporary
    scoreboard players add @s dmg_received 5
    scoreboard players operation @s dmg_received /= #10 Constant
# リセット
    scoreboard players reset $PlayerDef