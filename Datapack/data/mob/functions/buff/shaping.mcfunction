#> mob:buff/shaping
# バフのデータを整形する

data modify storage mob: Buff.Timer set from storage mob: Buff.Duration
execute unless data storage mob: Buff.Status run data modify storage mob: Buff.Status set value "-"
execute unless data storage mob: Buff.Effect run data modify storage mob: Buff.Effect set value "-"