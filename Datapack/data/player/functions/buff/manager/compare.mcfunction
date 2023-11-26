#> player:buff/manager/compare
# 既存バフと新規バフを比較する

# バフスコアの値→スコア
    execute store result score $ExistingBuffValue Temporary run data get entity @s data.Buff.Value
    execute store result score $NewBuffValue Temporary run data get storage player: Buff.Value

# 新規バフの値が大きければ既存バフを上書き
    execute if score $ExistingBuffValue Temporary matches 1.. if score $NewBuffValue Temporary matches 1.. if score $ExistingBuffValue Temporary > $NewBuffValue Temporary run tag @e[type=marker,tag=BuffInit,distance=..0.01] add BuffWeak
    execute if score $ExistingBuffValue Temporary matches ..-1 if score $NewBuffValue Temporary matches ..-1 if score $ExistingBuffValue Temporary < $NewBuffValue Temporary run tag @e[type=marker,tag=BuffInit,distance=..0.01] add BuffWeak
    execute if score $ExistingBuffValue Temporary matches 1.. if score $NewBuffValue Temporary matches 1.. if score $ExistingBuffValue Temporary <= $NewBuffValue Temporary run tag @s add BuffOverwrite
    execute if score $ExistingBuffValue Temporary matches ..-1 if score $NewBuffValue Temporary matches ..-1 if score $ExistingBuffValue Temporary >= $NewBuffValue Temporary run tag @s add BuffOverwrite

# 正負が逆でも上書き
    scoreboard players operation $PosNeg Temporary = $ExistingBuffValue Temporary
    scoreboard players operation $PosNeg Temporary *= $NewBuffValue Temporary
    execute if score $PosNeg Temporary matches ..-1 run tag @s add BuffOverwrite

# リセット
    scoreboard players reset $ExistingBuffValue Temporary
    scoreboard players reset $NewBuffValue Temporary
    scoreboard players reset $PosNeg Temporary