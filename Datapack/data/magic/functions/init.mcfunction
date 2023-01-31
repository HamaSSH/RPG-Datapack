##########
#>
#

# 魔法を使ったプレイヤーをタグ付け
    tag @s add this
# オフハンドのアイテムデータ → storage
    data modify storage magic:temp Data set from entity @s Inventory[{Slot:-106b}]
    execute store result score $MagicDamage Temporary run data get storage magic:temp Data.tag.magic.damage
# ダメージ
    scoreboard players operation @s dmg_dealt = @s ap
    scoreboard players operation @s dmg_dealt += $MagicDamage Temporary
# 魔法呼び出し
    execute store result score $MagicID Temporary run data get storage magic:temp Data.tag.CustomModelData
    execute store result score $MPCost Temporary run data get storage magic:temp Data.tag.magic.mp_cost
    function #magic:lookup
# クールダウン
    execute store result storage magic:temp gametime int 1 run time query gametime
    execute if entity @s[tag=CDCheck,tag=MPCheck] run item modify entity @s weapon.offhand magic:store_gametime
# 属性を纏う
    execute if entity @s[tag=CDCheck,tag=MPCheck] run function magic:element
# リセット
    tag @s remove CDCheck
    tag @s remove MPCheck
    tag @s remove this
    data remove storage magic:temp Data
    data remove storage magic:temp gametime
    scoreboard players reset $MagicDamage
    scoreboard players reset $MagicID