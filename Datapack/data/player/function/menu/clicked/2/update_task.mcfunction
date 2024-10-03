#> player:menu/clicked/2/update_task
# 現在の目的の更新

# タスクIDごとの内容
    execute if score @s TaskID matches 0 run data modify storage player: task.name set value '"住民と交流する"'
    execute if score @s TaskID matches 0 run data modify storage player: task.goal set value '"5"'

# プレイヤーメニューのLore編集
    item modify entity @s player.crafting.2 player:menu/task

# リセット
    data remove storage player: task