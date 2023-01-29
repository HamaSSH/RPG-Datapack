# バフの種類ごとに効果加算
    data modify storage menu:temp Data.buff set from storage menu:temp Data.newBuff[0]
    execute if data storage menu:temp Data.buff{bonus:"hp"} run function menu:brewing/brew/buff/hp
    execute if data storage menu:temp Data.buff{bonus:"hp_regen"} run function menu:brewing/brew/buff/hp_regen
    execute if data storage menu:temp Data.buff{bonus:"mp"} run function menu:brewing/brew/buff/mp
    execute if data storage menu:temp Data.buff{bonus:"mp_regen"} run function menu:brewing/brew/buff/mp_regen
    execute if data storage menu:temp Data.buff{bonus:"ad"} run function menu:brewing/brew/buff/ad
    execute if data storage menu:temp Data.buff{bonus:"ap"} run function menu:brewing/brew/buff/ap
    execute if data storage menu:temp Data.buff{bonus:"dex"} run function menu:brewing/brew/buff/dex
    execute if data storage menu:temp Data.buff{bonus:"def"} run function menu:brewing/brew/buff/def
    execute if data storage menu:temp Data.buff{bonus:"spd"} run function menu:brewing/brew/buff/spd
    execute if data storage menu:temp Data.buff{bonus:"crt"} run function menu:brewing/brew/buff/crt
    execute if data storage menu:temp Data.buff{bonus:"luk"} run function menu:brewing/brew/buff/luk
# storage Data.buffの中身がなくなるまで再帰
    data remove storage menu:temp Data.buff
    data remove storage menu:temp Data.newBuff[0]
    execute unless data storage core:temp Data.newBuff[0] run data remove storage core:temp Data.newBuff
    execute if data storage menu:temp Data.newBuff[0] run function menu:brewing/brew/buff/_