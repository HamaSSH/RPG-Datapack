#> player:buff/shaping
# バフのデータを整形する

# バフの効果時間
    data modify storage player: Buff.phase set value 0
    data modify storage player: Buff.timer set from storage player: Buff.duration

# ステータスバフ
    execute if data storage player: Buff.status run function player:buff/icon/init
    execute unless data storage player: Buff.status run data modify storage player: Buff.status set value "-"
    execute unless data storage player: Buff.sign run data modify storage player: Buff.sign set value "-"

# 属性纏い
    execute if data storage player: Buff.element run function player:magic/element/icon/init
    execute unless data storage player: Buff.element run data modify storage player: Buff.element set value "-"

# エフェクトバフ
    execute if data storage player: Buff.effect run function player:buff/effect/icon/init
    execute unless data storage player: Buff.effect run data modify storage player: Buff.effect set value "-"