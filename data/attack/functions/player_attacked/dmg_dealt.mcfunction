# 物理攻撃・魔法攻撃・器用攻撃に応じたステータス
  scoreboard players reset @s dmg_dealt
  execute if entity @s[advancements={attack:player_attacked={melee_ad=true}}] run scoreboard players operation @s dmg_dealt = @s ad
  execute if entity @s[advancements={attack:player_attacked={melee_ap=true}}] run scoreboard players operation @s dmg_dealt = @s ap
  execute if entity @s[advancements={attack:player_attacked={projectile=true}}] run scoreboard players operation @s dmg_dealt = @s dex
# チャージ率に応じてダメージ補正(melee)
  scoreboard players operation @s dmg_dealt *= #10 Constant
  execute if entity @s[advancements={attack:player_attacked={melee_charge0=true}}] run scoreboard players set @s dmg_dealt 0
  execute if entity @s[advancements={attack:player_attacked={melee_charge1=true}}] run scoreboard players operation @s dmg_dealt /= #90 Constant
  execute if entity @s[advancements={attack:player_attacked={melee_charge2=true}}] run scoreboard players operation @s dmg_dealt /= #80 Constant
  execute if entity @s[advancements={attack:player_attacked={melee_charge3=true}}] run scoreboard players operation @s dmg_dealt /= #70 Constant
  execute if entity @s[advancements={attack:player_attacked={melee_charge4=true}}] run scoreboard players operation @s dmg_dealt /= #60 Constant
  execute if entity @s[advancements={attack:player_attacked={melee_charge5=true}}] run scoreboard players operation @s dmg_dealt /= #50 Constant
  execute if entity @s[advancements={attack:player_attacked={melee_charge6=true}}] run scoreboard players operation @s dmg_dealt /= #40 Constant
  execute if entity @s[advancements={attack:player_attacked={melee_charge7=true}}] run scoreboard players operation @s dmg_dealt /= #30 Constant
  execute if entity @s[advancements={attack:player_attacked={melee_charge8=true}}] run scoreboard players operation @s dmg_dealt /= #10 Constant
  execute if entity @s[advancements={attack:player_attacked={melee_charge9=true}}] run scoreboard players operation @s dmg_dealt /= #8 Constant
  # execute if entity @s[advancements={attack:player_attacked={melee_charge0=true}}] run say melee_charge0
  # execute if entity @s[advancements={attack:player_attacked={melee_charge1=true}}] run say melee_charge1
  # execute if entity @s[advancements={attack:player_attacked={melee_charge2=true}}] run say melee_charge2
  # execute if entity @s[advancements={attack:player_attacked={melee_charge3=true}}] run say melee_charge3
  # execute if entity @s[advancements={attack:player_attacked={melee_charge4=true}}] run say melee_charge4
  # execute if entity @s[advancements={attack:player_attacked={melee_charge5=true}}] run say melee_charge5
  # execute if entity @s[advancements={attack:player_attacked={melee_charge6=true}}] run say melee_charge6
  # execute if entity @s[advancements={attack:player_attacked={melee_charge7=true}}] run say melee_charge7
  # execute if entity @s[advancements={attack:player_attacked={melee_charge8=true}}] run say melee_charge8
  # execute if entity @s[advancements={attack:player_attacked={melee_charge9=true}}] run say melee_charge9
# チャージ率に応じてダメージ補正(ranged)
  execute if entity @s[advancements={attack:player_attacked={ranged_charge0=true}}] run scoreboard players set @s dmg_dealt 0
  execute if entity @s[advancements={attack:player_attacked={ranged_charge1=true}}] run scoreboard players operation @s dmg_dealt /= #90 Constant
  execute if entity @s[advancements={attack:player_attacked={ranged_charge2=true}}] run scoreboard players operation @s dmg_dealt /= #70 Constant
  execute if entity @s[advancements={attack:player_attacked={ranged_charge3=true}}] run scoreboard players operation @s dmg_dealt /= #40 Constant
  execute if entity @s[advancements={attack:player_attacked={ranged_charge4=true}}] run scoreboard players operation @s dmg_dealt /= #20 Constant
  execute if entity @s[advancements={attack:player_attacked={ranged_charge5=true}}] run scoreboard players operation @s dmg_dealt /= #10 Constant
  execute if entity @s[advancements={attack:player_attacked={ranged_charge6=true}}] run scoreboard players operation @s dmg_dealt /= #8 Constant
  # execute if entity @s[advancements={attack:player_attacked={ranged_charge0=true}}] run say ranged_charge0
  # execute if entity @s[advancements={attack:player_attacked={ranged_charge1=true}}] run say ranged_charge1
  # execute if entity @s[advancements={attack:player_attacked={ranged_charge2=true}}] run say ranged_charge2
  # execute if entity @s[advancements={attack:player_attacked={ranged_charge3=true}}] run say ranged_charge3
  # execute if entity @s[advancements={attack:player_attacked={ranged_charge4=true}}] run say ranged_charge4
  # execute if entity @s[advancements={attack:player_attacked={ranged_charge5=true}}] run say ranged_charge5
  # execute if entity @s[advancements={attack:player_attacked={ranged_charge6=true}}] run say ranged_charge6
# クリティカルダメージ
  execute if predicate attack:allow_critical run function player:status/crt/_