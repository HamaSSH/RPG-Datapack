#> player:magic/_
# プレイヤーの魔法発動


# 各魔法発動時の処理
    tag @s add TriggerMagic
    function #asset:magic/trigger

# アイテムにクールダウンのデータを格納
    execute store result storage player: UsedTick int 1 run time query gametime
    item modify entity @s weapon.offhand player:magic/store_usedtick
    data modify storage player: Inventory set from entity @s Inventory

# 属性を纏う
    function player:magic/element/reset
    scoreboard players set @s ElementTimer 200
    execute if data storage player: Magic{Element:"Fire"} run tag @s add ElementFire
    execute if data storage player: Magic{Element:"Water"} run tag @s add ElementWater
    execute if data storage player: Magic{Element:"Thunder"} run tag @s add ElementThunder
    execute if data storage player: Magic{Element:"Earth"} run tag @s add ElementEarth
    execute if data storage player: Magic{Element:"Wind"} run tag @s add ElementWind
    execute if data storage player: Magic{Element:"Wind"} run effect give @s speed infinite 0 true
    execute if data storage player: Magic{Element:"Wind"} run effect give @s slow_falling infinite 0 true

# リセット
    data remove storage player: UsedTick
    tag @s remove TriggerMagic