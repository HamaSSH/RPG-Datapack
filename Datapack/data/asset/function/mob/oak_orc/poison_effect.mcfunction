#> asset:mob/oak_orc/poison_effect
# 毒エフェクトを与える

data modify storage player: NewBuff set value [{effect:"poison",duration:60,amplifier:3}]
function player:buff/_