#> mob:manager/tick
# モブのつけられたタグによる処理

# 表示用など不必要になったモブを消す
    execute if entity @s[tag=AutoKillVehicle] unless predicate lib:is_vehicle run function mob:manager/vanish
    execute if entity @s[tag=AutoKillPassenger] unless predicate lib:is_passenger run function mob:manager/vanish