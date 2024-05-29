#> player:buff
#

data modify storage player: NewBuff set value [{effect:"poison",amplifier:1,duration:200},{effect:"haste",amplifier:0,duration:200},{effect:"hunger",amplifier:0,duration:200},{effect:"jump_boost",amplifier:0,duration:200},{effect:"blindness",amplifier:0,duration:200},{effect:"water_breathing",amplifier:0,duration:200},{effect:"regeneration",amplifier:0,duration:200}]
function player:buff/_