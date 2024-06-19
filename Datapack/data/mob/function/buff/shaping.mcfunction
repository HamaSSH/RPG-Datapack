#> mob:buff/shaping
# バフのデータを整形する

data modify storage mob: buff.timer set from storage mob: buff.duration
execute unless data storage mob: buff.status run data modify storage mob: buff.status set value "-"
execute unless data storage mob: buff.effect run data modify storage mob: buff.effect set value "-"