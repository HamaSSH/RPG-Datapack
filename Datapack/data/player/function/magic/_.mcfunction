#> player:magic/_
# プレイヤーの魔法発動

# 魔導書即リセット抽選
    execute if score @s GrimReset matches 1.. run function player:status/passive/grimoire_reset/_

# MPを減らす
    execute store result score $MPCost Temporary run data get storage player: magic.mp_cost
    execute if entity @s[tag=!GrimReset] run scoreboard players operation @s MP -= $MPCost Temporary

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
    execute store result score $UsedTick Temporary run time query gametime
    execute if entity @s[tag=GrimReset] run scoreboard players remove $UsedTick Temporary 100000
    execute store result storage player: used_tick int 1 run scoreboard players get $UsedTick Temporary
    item modify entity @s weapon.offhand player:magic/store_usedtick
    data modify storage player: Inventory set from entity @s Inventory

# 属性を纏う
    function player:magic/element/reset
    function player:magic/element/init

# リセット
    tag @s remove GrimReset
    scoreboard players reset $MPCost Temporary
    scoreboard players reset $MagicDmg Temporary
    scoreboard players reset $DmgMultiplier Temporary
    scoreboard players reset $PlayerINT Temporary
    scoreboard players reset $UsedTick Temporary
    data remove storage player: used_tick
    tag @s remove TriggerMagic