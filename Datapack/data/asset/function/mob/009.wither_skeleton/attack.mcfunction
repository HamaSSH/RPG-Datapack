#> asset:mob/009.wither_skeleton/attack
# 攻撃時の動作

data modify storage player: NewBuff set value [{effect:"wither",duration:50,amplifier:1}]
execute as @p[tag=Victim] run function player:buff/_