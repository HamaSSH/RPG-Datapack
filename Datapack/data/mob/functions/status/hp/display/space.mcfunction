#> mob:status/hp/display/space
#

# レベルの桁ごとの空白
    execute if score $Level Temporary matches 1..9 run data modify storage mob: Space.Level set value '"\\uF802\\uF808\\uF801\\uF803"'
    execute if score $Level Temporary matches 10..99 run data modify storage mob: Space.Level set value '"\\uF802\\uF808\\uF801\\uF803\\uF803"'
    execute if score $Level Temporary matches 100..999 run data modify storage mob: Space.Level set value '"\\uF802\\uF808\\uF801\\uF803\\uF803\\uF803"'

# 名前の文字数ごとの空白 (一文字=\\uF804、＋二文字ごとに\\uF801×n)
    execute if score $NameChar Temporary matches 1 run data modify storage mob: Space.NameChar set value '"\\uF804"'
    execute if score $NameChar Temporary matches 2 run data modify storage mob: Space.NameChar set value '"\\uF808\\uF801"'
    execute if score $NameChar Temporary matches 3 run data modify storage mob: Space.NameChar set value '"\\uF808\\uF805"'
    execute if score $NameChar Temporary matches 4 run data modify storage mob: Space.NameChar set value '"\\uF809\\uF802"'
    execute if score $NameChar Temporary matches 5 run data modify storage mob: Space.NameChar set value '"\\uF809\\uF806"'
    execute if score $NameChar Temporary matches 6 run data modify storage mob: Space.NameChar set value '"\\uF809\\uF808\\uF803"'
    execute if score $NameChar Temporary matches 7 run data modify storage mob: Space.NameChar set value '"\\uF809\\uF808\\uF807"'
    execute if score $NameChar Temporary matches 8 run data modify storage mob: Space.NameChar set value '"\\uF80A\\uF804"'
    execute if score $NameChar Temporary matches 9 run data modify storage mob: Space.NameChar set value '"\\uF80A\\uF808"'
    execute if score $NameChar Temporary matches 10 run data modify storage mob: Space.NameChar set value '"\\uF80A\\uF808\\uF805"'
    execute if score $NameChar Temporary matches 11 run data modify storage mob: Space.NameChar set value '"\\uF80A\\uF809\\uF801"'
    execute if score $NameChar Temporary matches 12 run data modify storage mob: Space.NameChar set value '"\\uF80A\\uF809\\uF806"'
    execute if score $NameChar Temporary matches 13 run data modify storage mob: Space.NameChar set value '"\\uF80A\\uF809\\uF808\\uF802"'
    execute if score $NameChar Temporary matches 14 run data modify storage mob: Space.NameChar set value '"\\uF80A\\uF809\\uF808\\uF807"'
    execute if score $NameChar Temporary matches 15 run data modify storage mob: Space.NameChar set value '"\\uF80B\\uF803"'
    execute if score $NameChar Temporary matches 16 run data modify storage mob: Space.NameChar set value '"\\uF80B\\uF808"'

# 文字数が奇数か偶数かで調整
    scoreboard players operation $NameChar Temporary %= #2 Constant
    execute if score $NameChar Temporary matches 1 run data modify storage mob: Space.Extra set value '"\\uF801"'
    execute if score $NameChar Temporary matches 0 run data modify storage mob: Space.Extra set value '""'