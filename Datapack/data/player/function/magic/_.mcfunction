#> player:magic/_
# プレイヤーの魔法発動

# INTによる魔法威力変更
    execute store result score $MagicDmg Temporary run data get storage player: magic.damage
    execute store result score $DmgMultiplier Temporary run data get storage player: magic.multiplier
    scoreboard players operation $PlayerINT Temporary = @s INT
    scoreboard players operation $PlayerINT Temporary *= $DmgMultiplier Temporary
    scoreboard players operation $PlayerINT Temporary /= #100 Constant
    scoreboard players operation $MagicDmg Temporary += $PlayerINT Temporary
    execute store result storage player: magic.damage int 1 run scoreboard players get $MagicDmg Temporary

# 各魔法発動時の処理
    tag @s add TriggerMagic
    function #asset:magic/trigger

# アイテムにクールダウンのデータを格納
    execute store result storage player: used_tick int 1 run time query gametime
    item modify entity @s weapon.offhand player:magic/store_usedtick
    data modify storage player: Inventory set from entity @s Inventory

# 属性を纏う
    function player:magic/element/reset
    function player:magic/element/init

# リセット
    scoreboard players reset $MagicDmg Temporary
    scoreboard players reset $DmgMultiplier Temporary
    scoreboard players reset $PlayerINT Temporary
    data remove storage player: used_tick
    tag @s remove TriggerMagic