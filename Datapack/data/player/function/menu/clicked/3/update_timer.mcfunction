#> player:menu/clicked/3/update_timer
# Loreに表示するタイマーの更新

tag @s remove MenuRecallUpdate
execute unless score @s 5404.Tick matches 0.. run return run function player:menu/update

# タイマーの計算
    scoreboard players operation $RecallTimer Temporary = @s 5404.Tick
    scoreboard players operation $RecallTimer Temporary /= #10 Constant

# Loreの準備
    execute if score $RecallTimer Temporary matches 0 run data modify storage player: recall.charge set value ['"\\uE001"','"\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001"']
    execute if score $RecallTimer Temporary matches 1 run data modify storage player: recall.charge set value ['"\\uE001\\uE001"','"\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001"']
    execute if score $RecallTimer Temporary matches 2 run data modify storage player: recall.charge set value ['"\\uE001\\uE001\\uE001"','"\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001"']
    execute if score $RecallTimer Temporary matches 3 run data modify storage player: recall.charge set value ['"\\uE001\\uE001\\uE001\\uE001"','"\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001"']
    execute if score $RecallTimer Temporary matches 4 run data modify storage player: recall.charge set value ['"\\uE001\\uE001\\uE001\\uE001\\uE001"','"\\uE001\\uE001\\uE001\\uE001\\uE001"']
    execute if score $RecallTimer Temporary matches 5 run data modify storage player: recall.charge set value ['"\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001"','"\\uE001\\uE001\\uE001\\uE001"']
    execute if score $RecallTimer Temporary matches 6 run data modify storage player: recall.charge set value ['"\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001"','"\\uE001\\uE001\\uE001"']
    execute if score $RecallTimer Temporary matches 7 run data modify storage player: recall.charge set value ['"\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001"','"\\uE001\\uE001"']
    execute if score $RecallTimer Temporary matches 8 run data modify storage player: recall.charge set value ['"\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001"','"\\uE001"']
    execute if score $RecallTimer Temporary matches 9 run data modify storage player: recall.charge set value ['"\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001\\uE001"','""']

# テレポートまでのタイマーの表示
    item modify entity @s player.crafting.3 player:menu/recall/charging

# リセット
    scoreboard players reset $RecallTimer Temporary
    data remove storage player: recall