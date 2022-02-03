# プレイヤーの装備 → storage
  data modify storage actionbar:temp mainhand set from entity @s SelectedItem
  data modify storage actionbar:temp offhand set from entity @s Inventory[{Slot:-106b}]
# 魔法
  # 表示(左) offhand:魔法, mainhand:なし
    execute if predicate core:actionbar/l/magic/fire run function core:actionbar/l/magic/fire
    execute if predicate core:actionbar/l/magic/water run function core:actionbar/l/magic/water
    execute if predicate core:actionbar/l/magic/thunder run function core:actionbar/l/magic/thunder
    execute if predicate core:actionbar/l/magic/earth run function core:actionbar/l/magic/earth
    execute if predicate core:actionbar/l/magic/wind run function core:actionbar/l/magic/wind
  # 表示(右) offhand:魔法, mainhand:武器
    execute if predicate core:actionbar/r/magic/fire run function core:actionbar/r/magic/fire
    execute if predicate core:actionbar/r/magic/water run function core:actionbar/r/magic/water
    execute if predicate core:actionbar/r/magic/thunder run function core:actionbar/r/magic/thunder
    execute if predicate core:actionbar/r/magic/earth run function core:actionbar/r/magic/earth
    execute if predicate core:actionbar/r/magic/wind run function core:actionbar/r/magic/wind
# 武器
  # 表示(左) mainhand:武器, 弓はmainhand/offhand
    execute if predicate core:actionbar/l/weapon/dagger run function core:actionbar/l/weapon/dagger
    execute if predicate core:actionbar/l/weapon/sword run function core:actionbar/l/weapon/sword
    execute if predicate core:actionbar/l/weapon/spear run function core:actionbar/l/weapon/spear
    execute if predicate core:actionbar/l/weapon/hammer run function core:actionbar/l/weapon/hammer
    execute if predicate core:actionbar/l/weapon/wand run function core:actionbar/l/weapon/wand
    execute if predicate core:actionbar/l/weapon/bow unless data storage actionbar:temp iconL run function core:actionbar/l/weapon/bow
  # 表示(右) mainhand:武器(弓以外), offhand:弓
    execute if predicate core:actionbar/r/weapon/bow run function core:actionbar/r/weapon/bow
# もし表示させるものが無ければ空白  
  execute unless data storage actionbar:temp iconL run data modify storage actionbar:temp iconL set value '{"text":"\\uF82A\\uF807"}'
  execute unless data storage actionbar:temp iconR run data modify storage actionbar:temp iconR set value '{"text":"\\uF82A\\uF807"}'
# HP表示
  function core:actionbar/hp_bar
  function core:actionbar/hp

# 適用
  title @s actionbar ["",{"nbt":"iconL","storage":"actionbar:temp","interpret":true},{"nbt":"iconR","storage":"actionbar:temp","interpret":true},{"score":{"name":"@s","objective":"level"},"font":"resource:descent13"},{"score":{"name":"@s","objective":"xp"},"font":"resource:descent13"},{"score":{"name":"@s","objective":"xp_next"},"font":"resource:descent13"},{"score":{"name":"@s","objective":"gold"},"font":"resource:descent13"},"\uF82E","\uF80B","\uF80A","\uF806","\uE2A0","\uF822",{"nbt":"hp","storage":"actionbar:temp","interpret":true},{"text":"/","font":"resource:descent16","color":"gray"},{"score":{"name":"@s","objective":"hp_max"},"font":"resource:descent16","color":"gray"},"\uF828","\uF823",{"nbt":"hp_bar","storage":"actionbar:temp","interpret":true},"\uF829","\uF823","\uF82B","\uF829","\uF828",{"nbt":"iconL","storage":"actionbar:temp","interpret":true},"\uF822",{"nbt":"iconR","storage":"actionbar:temp","interpret":true},"\uF80C","\uF808","\uF804",{"text":"Lv.","font":"resource:descent13","color":"gray"},"\uF822",{"score":{"name":"@s","objective":"level"},"font":"resource:descent13"},"\uF822",{"text":"(","font":"resource:descent13","color":"gray"},{"score":{"name":"@s","objective":"xp"},"font":"resource:descent13","color":"#9EE082"},{"text":"/","font":"resource:descent13","color":"gray"},{"score":{"name":"@s","objective":"xp_next"},"font":"resource:descent13","color":"gray"},{"text":")","font":"resource:descent13","color":"gray"},"\uF828",{"score":{"name":"@s","objective":"gold"},"font":"resource:descent13"},{"text":"G","font":"resource:descent13","color":"#FFEE59"},"\uF822","\uE2A1","\uF82E",{"score":{"name":"@s","objective":"hp"},"font":"resource:descent16"},{"score":{"name":"@s","objective":"hp_max"},"font":"resource:descent16"}]
# iconL iconR $level $xp $xp_next $gold +512 ########## 左画面外
# -64 -32 -6 ♡ +2 $hp / $hp_max +8 +3 hp_bar +16 +3 ### HP、HPバー
# +64 +16 +8 iconL +2 iconR -128 -8 -4 ################ チャージ・魔法・矢表示
# Lv. +2 $level +2 ($xp/$xp_next) +8 $gold G +2 ｺﾞ #### レベル・経験値・ゴールド
# +512 $hp $hp_max #################################### 右画面外

# リセット
  data remove storage actionbar:temp mainhand
  data remove storage actionbar:temp offhand
  data remove storage actionbar:temp iconL
  data remove storage actionbar:temp iconR
  data remove storage actionbar:temp arrow
  data remove storage actionbar:temp hp
  data remove storage actionbar:temp hp_bar
  scoreboard players reset $ActionBarArrow