# # 全ステータスバフ
#     data modify storage player: NewBuff append value {status:"HP",duration:10000,amplifier:10}
#     data modify storage player: NewBuff append value {status:"HPR",duration:10000,amplifier:10}
#     data modify storage player: NewBuff append value {status:"MP",duration:10000,amplifier:10}
#     data modify storage player: NewBuff append value {status:"MPR",duration:10000,amplifier:10}
#     data modify storage player: NewBuff append value {status:"STR",duration:10000,amplifier:10}
#     data modify storage player: NewBuff append value {status:"INT",duration:10000,amplifier:10}
#     data modify storage player: NewBuff append value {status:"DEX",duration:10000,amplifier:-10}
#     data modify storage player: NewBuff append value {status:"DEF",duration:10000,amplifier:-10}
#     data modify storage player: NewBuff append value {status:"AGI",duration:10000,amplifier:-10}
#     data modify storage player: NewBuff append value {status:"CRT",duration:10000,amplifier:-10}
#     data modify storage player: NewBuff append value {status:"LUK",duration:10000,amplifier:-10}

# # 属性纏いバフ
#     data modify storage player: NewBuff append value {element:"fire",duration:10000,amplifier:0}
#     data modify storage player: NewBuff append value {element:"water",duration:10000,amplifier:0}
#     data modify storage player: NewBuff append value {element:"thunder",duration:10000,amplifier:0}
#     data modify storage player: NewBuff append value {element:"earth",duration:10000,amplifier:0}
#     data modify storage player: NewBuff append value {element:"wind",duration:10000,amplifier:0}

# # 全エフェクトバフ
#     data modify storage player: NewBuff append value {effect:"poison",duration:10000,amplifier:0}
#     data modify storage player: NewBuff append value {effect:"haste",duration:10000,amplifier:0}
#     data modify storage player: NewBuff append value {effect:"hunger",duration:10000,amplifier:0}
#     data modify storage player: NewBuff append value {effect:"jump_boost",duration:10000,amplifier:0}
#     data modify storage player: NewBuff append value {effect:"blindness",duration:10000,amplifier:0}
#     data modify storage player: NewBuff append value {effect:"water_breathing",duration:10000,amplifier:0}
#     data modify storage player: NewBuff append value {effect:"regeneration",duration:10000,amplifier:0}
#     data modify storage player: NewBuff append value {effect:"fire_resistance",duration:10000,amplifier:0}
#     data modify storage player: NewBuff append value {effect:"slow_falling",duration:10000,amplifier:0}
#     data modify storage player: NewBuff append value {effect:"invisibility",duration:10000,amplifier:0}
#     data modify storage player: NewBuff append value {effect:"wither",duration:10000,amplifier:0}

# # バフの適用
# function player:buff/_