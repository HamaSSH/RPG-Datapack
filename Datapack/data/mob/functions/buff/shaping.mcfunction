#> mob:buff/shaping
# バフのデータを整形する

data modify storage mob: Buff.timer set from storage mob: Buff.duration
execute unless data storage mob: Buff.status run data modify storage mob: Buff.status set value "-"
execute unless data storage mob: Buff.effect run data modify storage mob: Buff.effect set value "-"