##########
#>
#

# 会心攻撃力上昇率 dmg_dealt = dmg_dealt * (crt/7 + 110) / 100
# = dmg_dealt * (crt + 800) / 700
    scoreboard players operation $CritMultiplier Temporary = @s crt
    scoreboard players add $CritMultiplier Temporary 800
    scoreboard players operation @s dmg_dealt *= $CritMultiplier Temporary
# 一の位四捨五入
    scoreboard players add @s dmg_dealt 350
    scoreboard players operation @s dmg_dealt /= #700 Constant
# 会心攻撃成功！
    tag @s add CriticalHit
# アサシンであればバフ
    execute if entity @s[team=Assassin] run function player:class/assassin/skill
# 演出(会心音ゴｷｨ)
    playsound resource:custom.weapon.crit master @s ~ ~ ~ 1.0 1.0
# リセット
    scoreboard players reset $CritMultiplier