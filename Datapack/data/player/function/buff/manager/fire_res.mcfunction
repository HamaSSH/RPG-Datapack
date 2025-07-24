#> player:buff/manager/fire_res
# 火炎耐性エンチャントを持っていたら継続

kill @s
data modify storage player: NewBuff set value [{effect:"fire_resistance",duration:1000000000,amplifier:0,source:"enchant"}]
execute as @p[tag=BuffOwner] run function player:buff/_