#> player:buff/add
# バフの追加

# バフスコアの設定
$scoreboard players set @s Buff$(Bonus) $(Value)
tag @s add StatusUpdate

# バフ管理用マーカーの召喚
    execute positioned 0 1 0 summon marker run function player:buff/manager/init

# Consumables.Buffの中身が無くなるまで再帰
    data remove storage player: Consumables.Buff[0]
    data modify storage player: Buff set from storage player: Consumables.Buff[0]
    execute if data storage player: Consumables.Buff[0] run function player:buff/add with storage player: Buff