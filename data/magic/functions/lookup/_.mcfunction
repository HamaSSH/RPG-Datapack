# 属性ごとでまず5つに分岐
  execute if score $MagicID Temporary matches 4101..4164 run function magic:lookup/fire/lv5
  execute if score $MagicID Temporary matches 4201..4264 run function magic:lookup/water/lv5
  execute if score $MagicID Temporary matches 4301..4364 run function magic:lookup/thunder/lv5
  execute if score $MagicID Temporary matches 4401..4464 run function magic:lookup/earth/lv5
  execute if score $MagicID Temporary matches 4501..4564 run function magic:lookup/wind/lv5