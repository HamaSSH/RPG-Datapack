#> player:magic/_
# プレイヤーの魔法発動


# 各魔法発動時の処理
    tag @s add TriggerMagic
    function #asset:magic/trigger

# アイテムにクールダウンのデータを格納
    execute store result storage player: UsedTick int 1 run time query gametime
    item modify entity @s weapon.offhand player:magic/store_usedtick

# 属性を纏う
    function player:magic/element

# リセット
    data remove storage player: UsedTick
    tag @s remove TriggerMagic