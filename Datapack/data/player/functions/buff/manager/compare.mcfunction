#> player:buff/manager/compare
# 既存バフと新規バフを比較する

# バフスコアの値→スコア
    execute store result score $ExBuffAmp Temporary run data get entity @s data.Buff.Amplifier
    execute store result score $NewBuffAmp Temporary run data get storage player: Buff.Amplifier

# 新規バフの値が大きければ既存バフを上書き
    execute if score $ExBuffAmp Temporary matches 1.. if score $NewBuffAmp Temporary matches 1.. if score $ExBuffAmp Temporary > $NewBuffAmp Temporary run tag @e[type=marker,tag=BuffInit,distance=..0.01] add BuffWeak
    execute if score $ExBuffAmp Temporary matches ..-1 if score $NewBuffAmp Temporary matches ..-1 if score $ExBuffAmp Temporary < $NewBuffAmp Temporary run tag @e[type=marker,tag=BuffInit,distance=..0.01] add BuffWeak
    execute if score $ExBuffAmp Temporary matches 1.. if score $NewBuffAmp Temporary matches 1.. if score $ExBuffAmp Temporary <= $NewBuffAmp Temporary run tag @s add BuffOverwrite
    execute if score $ExBuffAmp Temporary matches ..-1 if score $NewBuffAmp Temporary matches ..-1 if score $ExBuffAmp Temporary >= $NewBuffAmp Temporary run tag @s add BuffOverwrite

# 正負が逆でも上書き
    scoreboard players operation $PosNeg Temporary = $ExBuffAmp Temporary
    scoreboard players operation $PosNeg Temporary *= $NewBuffAmp Temporary
    execute if score $PosNeg Temporary matches ..-1 run tag @s add BuffOverwrite

# リセット
    scoreboard players reset $ExBuffAmp Temporary
    scoreboard players reset $NewBuffAmp Temporary
    scoreboard players reset $PosNeg Temporary