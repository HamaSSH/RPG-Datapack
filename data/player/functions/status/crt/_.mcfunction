# もしcrt>=1000であれば常にクリティカル(たとえそんなこと起こらなかろうが！)
  execute unless score @s crt matches 1000.. run function player:status/crt/chance
  execute if score @s crt matches 1000.. run function player:status/crt/damage