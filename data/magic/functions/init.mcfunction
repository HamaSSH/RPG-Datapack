# オフハンドのアイテムデータ → storage
  data modify storage magic:temp Data set from entity @s Inventory[{Slot:-106b}]
  execute store result score $MagicDamage Temporary run data get storage magic:temp Data.tag.bonus.magic_damage
# ダメージ
  scoreboard players operation @s dmg_dealt = @s ap
  scoreboard players operation @s dmg_dealt += $MagicDamage Temporary
# 魔法呼び出し
  execute store result score $MagicID Temporary run data get storage magic:temp Data.tag.CustomModelData
  execute if score $MagicID Temporary matches 4101 run function magic:asset/4101.fire_ball/cost
# リセット
  scoreboard players reset $MagicDamage
  scoreboard players reset $MagicID