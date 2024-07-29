#> lib:p_motion/vertical/kill
# 縦方向Motion適用のためのアマスタkill

kill @s
schedule function lib:p_motion/enchant/vertical/tp_back 1t
tag @a[tag=PMotion] remove PMotion