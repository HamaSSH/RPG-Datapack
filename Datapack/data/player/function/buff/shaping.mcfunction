#> player:buff/shaping
# バフのデータを整形する

# ステータスバフ
    data modify storage player: buff.phase set value 0
    execute if data storage player: buff.status run function player:buff/icon/init
    execute unless data storage player: buff.status run data modify storage player: buff.status set value "-"
    execute unless data storage player: buff.sign run data modify storage player: buff.sign set value "-"

# 属性纏い
    execute if data storage player: buff.element run function player:magic/element/icon/init
    execute unless data storage player: buff.element run data modify storage player: buff.element set value "-"

# エフェクトバフ
    execute if data storage player: buff.effect run function player:buff/effect/icon/init
    execute unless data storage player: buff.effect run data modify storage player: buff.effect set value "-"

# パラディンのバフ強化/デバフ弱化
    execute if predicate player:class/is_paladin if score @s PassiveSkill1 matches 1.. run function player:class/paladin/passive/skill1/_

# バフの効果時間
    data modify storage player: buff.timer set from storage player: buff.duration