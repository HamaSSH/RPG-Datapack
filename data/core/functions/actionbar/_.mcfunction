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
    execute if predicate core:actionbar/l/weapon/bow unless data storage actionbar:temp weapon run function core:actionbar/l/weapon/bow
  # 表示(右) mainhand:武器(弓以外), offhand:弓
    execute if predicate core:actionbar/r/weapon/bow run function core:actionbar/r/weapon/bow
  
  execute unless data storage actionbar:temp weapon run data modify storage actionbar:temp weapon set value '{"text":"\\uF82A\\uF807"}'
  execute unless data storage actionbar:temp weapon2 run data modify storage actionbar:temp weapon2 set value '{"text":"\\uF82A\\uF807"}'

  scoreboard players operation $ActionBarArrow Temporary = @s arrow
  data modify storage actionbar:temp arrow set value '{"text":"\\uF809\\uF802"}'
# 最大HP表示
  function core:actionbar/hp_bar
# 適用
  title @s actionbar ["\uF821",{"nbt":"weapon2","storage":"actionbar:temp","interpret":true},{"nbt":"weapon1","storage":"actionbar:temp","interpret":true},{"nbt":"arrow","storage":"actionbar:temp","interpret":true},{"score":{"name":"$ActionBarArrow","objective":"Temporary"},"font":"resource:descent31"},{"score":{"name":"@s","objective":"level"},"font":"resource:descent13"},{"score":{"name":"@s","objective":"xp"},"font":"resource:descent13"},{"score":{"name":"@s","objective":"xp_next"},"font":"resource:descent13"},{"score":{"name":"@s","objective":"gold"},"font":"resource:descent13"},"\uF82E","\uF80C","\uF829","\uF828","\uE2A0","\uF822",{"score":{"name":"@s","objective":"hp"},"font":"resource:descent16"},{"text":"/","font":"resource:descent16","color":"gray"},{"score":{"name":"@s","objective":"hp_max"},"font":"resource:descent16","color":"gray"},"\uF82C","\uF82B","\uF82A","\uF821",{"nbt":"weapon2","storage":"actionbar:temp","interpret":true},"\uF80A","\uF809","\uF803",{"nbt":"weapon","storage":"actionbar:temp","interpret":true},{"nbt":"arrow","storage":"actionbar:temp","interpret":true},{"score":{"name":"$ActionBarArrow","objective":"Temporary"},"font":"resource:descent31"},"\uF82A","\uF828","\uF823","\uF80D",{"nbt":"hp_bar","storage":"actionbar:temp","interpret":true},"\uF829","\uF823",{"text":"Lv.","font":"resource:descent13","color":"gray"},"\uF822",{"score":{"name":"@s","objective":"level"},"font":"resource:descent13"},"\uF822",{"text":"(","font":"resource:descent13","color":"gray"},{"score":{"name":"@s","objective":"xp"},"font":"resource:descent13","color":"#9EE082"},{"text":"/","font":"resource:descent13","color":"gray"},{"score":{"name":"@s","objective":"xp_next"},"font":"resource:descent13","color":"gray"},{"text":")","font":"resource:descent13","color":"gray"},"\uF828",{"score":{"name":"@s","objective":"gold"},"font":"resource:descent13"},{"text":"G","font":"resource:descent13","color":"#FFEE59"},"\uF822","\uE2A1","\uF808","\uF806","\uF806","\uF806","\uF82E",{"score":{"name":"@s","objective":"hp"},"font":"resource:descent16"},{"score":{"name":"@s","objective":"hp_max"},"font":"resource:descent16"}]
# リセット
  data remove storage actionbar:temp mainhand
  data remove storage actionbar:temp offhand
  data remove storage actionbar:temp weapon
  data remove storage actionbar:temp weapon2
  data remove storage actionbar:temp arrow
  data remove storage actionbar:temp hp_bar
  scoreboard players reset $ActionBarArrow