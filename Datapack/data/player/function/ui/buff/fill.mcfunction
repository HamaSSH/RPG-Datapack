#> player:ui/buff/fill
# buff.mainが23要素持つように配列を成形する

data modify storage player:ui buff.main append value '""'
execute unless data storage player:ui buff.main[22] run function player:ui/buff/fill