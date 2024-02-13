#> mob:manager/tick
# モブのつけられたタグによる処理

# 表示用など不必要になったモブを消す
    execute if entity @s[tag=HasVehicle] unless predicate lib:has_vehicle run function mob:manager/vanish
    execute if entity @s[tag=HasPassenger] unless predicate lib:has_passenger run function mob:manager/vanish
    execute if entity @s[tag=Timer] run function mob:manager/autokill_timer

# 左クリック用モブ
    execute if entity @s[tag=LeftClick] run function player:combat/leftclick/autokill

# 矢の自動消滅
    execute if entity @s[type=arrow,tag=Flying] run function player:combat/main/bow/arrow/tick