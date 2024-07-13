#> player:ui/buff/fill
# buff.mainが22要素持つように配列を成形する

data modify storage player:ui buff.main append value '""'
execute unless data storage player:ui buff.main[21] run function player:ui/buff/fill