#> mob:on_hurt/element/water
# 水纏いのプレイヤーに攻撃された時のデバフ

# ダメージと防御力30%カット #TODO: Buffの優先度(Importantの概念)で強制上書き
    data modify storage mob: NewBuff set value [{status:"DmgDealt",duration:40},{status:"DEF",duration:40}]
    execute store result storage mob: NewBuff[0].amplifier int -0.3 run scoreboard players get @s DmgDealt
    execute store result storage mob: NewBuff[1].amplifier int -0.3 run scoreboard players get @s DEF
    function mob:buff/_