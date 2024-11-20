#> asset:mob/wither_skull/attack
# 攻撃時の動作

data modify storage player: NewBuff set value [{effect:"wither",duration:50,amplifier:0}]
execute as @p[tag=Victim] run function player:buff/_