#> player:ui/_
# プレイヤーUI

# 初期状態
    data modify storage player:ui buff set value {bracketL:'"\\uF828\\uF827"',bracketR:'"\\uF828\\uF827"'}
    data modify storage player:ui skill_bar set value '"\\uE1A0"'
    data modify storage player:ui Magic.RightHanded set value '"\\uF829\\uF821"'
    data modify storage player:ui Magic.LeftHanded set value '"\\uF829\\uF821"'
    data modify storage player:ui ArrowLC set value '"\\uE212"'
    data modify storage player:ui Quiver.RightHanded set value '"\\uF829\\uF828\\uF821"'
    data modify storage player:ui Quiver.LeftHanded set value '"\\uF829\\uF828\\uF821"'

# それぞれのUIの設定
    function player:ui/hp_bar
    execute if entity @s[tag=IsBuffed] run function player:ui/buff
    function player:ui/skill_bar/_
    execute if predicate player:offhand_magic/_ run function player:ui/magic
    execute if data storage player: Accessories[].tag.Quiver run function player:ui/quiver

# 右揃え・左揃え用のスコア用
    data modify storage player:ui alignR set value '["\\uF820",{"score":{"name":"@s","objective":"HP"}},{"score":{"name":"@s","objective":"HPMax"}}]'
    data modify storage player:ui alignL set value '["",{"score":{"name":"@s","objective":"LVL"},"bold":true},{"score":{"name":"@s","objective":"EXP"}},{"score":{"name":"@s","objective":"NextEXP"}},{"score":{"name":"@s","objective":"Gold"}},"\\uF820"]'

# UIの適用 HP/HPMax quiverRH MagicRH hpbar buff skillbar MagicLH quiverLH LVL(EXP/NEXTEXP) Gold
    title @s actionbar [{"nbt":"alignL","storage":"player:ui","interpret":true},"\uF80B\uF828\uF821","\uE140\uF822",[{"text":"","font":"shift_16"},{"score":{"name":"@s","objective":"HP"}},"/",{"score":{"name":"@s","objective":"HPMax"},"color":"gray"}],"\uF809\uF803",{"nbt":"Quiver.LeftHanded","storage":"player:ui","interpret":true},"\uF809\uF806",{"nbt":"Magic.RightHanded","storage":"player:ui","interpret":true},"\uF828\uF821",{"nbt":"hp_bar","storage":"player:ui","interpret":true},"\uF806",[{"nbt":"buff.extra","storage":"player:ui","interpret":true},{"nbt":"buff.effect.prefix","storage":"player:ui","interpret":true},{"nbt":"buff.status.prefix","storage":"player:ui","interpret":true},{"nbt":"buff.bracketL","storage":"player:ui","interpret":true},{"nbt":"buff.main[0]","storage":"player:ui","interpret":true},{"nbt":"buff.main[1]","storage":"player:ui","interpret":true},{"nbt":"buff.main[2]","storage":"player:ui","interpret":true},{"nbt":"buff.main[3]","storage":"player:ui","interpret":true},{"nbt":"buff.main[4]","storage":"player:ui","interpret":true},{"nbt":"buff.main[5]","storage":"player:ui","interpret":true},{"nbt":"buff.main[6]","storage":"player:ui","interpret":true},{"nbt":"buff.main[7]","storage":"player:ui","interpret":true},{"nbt":"buff.main[8]","storage":"player:ui","interpret":true},{"nbt":"buff.main[9]","storage":"player:ui","interpret":true},{"nbt":"buff.main[10]","storage":"player:ui","interpret":true},{"nbt":"buff.separator","storage":"player:ui","interpret":true},{"nbt":"buff.main[11]","storage":"player:ui","interpret":true},{"nbt":"buff.main[12]","storage":"player:ui","interpret":true},{"nbt":"buff.main[13]","storage":"player:ui","interpret":true},{"nbt":"buff.main[14]","storage":"player:ui","interpret":true},{"nbt":"buff.main[15]","storage":"player:ui","interpret":true},{"nbt":"buff.main[16]","storage":"player:ui","interpret":true},{"nbt":"buff.main[17]","storage":"player:ui","interpret":true},{"nbt":"buff.main[18]","storage":"player:ui","interpret":true},{"nbt":"buff.main[19]","storage":"player:ui","interpret":true},{"nbt":"buff.main[20]","storage":"player:ui","interpret":true},{"nbt":"buff.bracketR","storage":"player:ui","interpret":true},{"nbt":"buff.status.suffix","storage":"player:ui","interpret":true},{"nbt":"buff.effect.suffix","storage":"player:ui","interpret":true},{"nbt":"buff.extra","storage":"player:ui","interpret":true}],"\uF82A\uF829",{"nbt":"skill_bar","storage":"player:ui","interpret":true},"\uF828\uF822",{"nbt":"Magic.LeftHanded","storage":"player:ui","interpret":true},"\uF809\uF807",{"nbt":"Quiver.RightHanded","storage":"player:ui","interpret":true},"\uF80B\uF80A\uF809\uF822",[{"text":"","color":"gray","font":"shift_13"},{"text":"Lv. "},{"score":{"name":"@s","objective":"LVL"},"color":"white","bold":true},"  (",{"score":{"name":"@s","objective":"EXP"},"color":"#9EE082"},"/",{"score":{"name":"@s","objective":"NextEXP"}},")     ",{"score":{"name":"@s","objective":"Gold"},"color":"white"},{"text":"G","color":"#FFEE59"}],"\uF822","\uE141",{"nbt":"alignR","storage":"player:ui","interpret":true}]

# リセット
    data remove storage player:ui buff
    data remove storage player:ui Magic
    data remove storage player:ui ArrowLC
    data remove storage player:ui Quiver
    data remove storage player:ui skill_bar
    data remove storage player:ui hp_bar
    data remove storage player:ui alignR
    data remove storage player:ui alignL