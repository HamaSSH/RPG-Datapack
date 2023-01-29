# 物理攻撃・魔法攻撃・器用攻撃に応じたステータス
    scoreboard players reset @s dmg_dealt
    execute if entity @s[advancements={combat:player_attacked={melee_ad=true}}] run scoreboard players operation @s dmg_dealt = @s ad
    execute if entity @s[advancements={combat:player_attacked={melee_ap=true}}] run scoreboard players operation @s dmg_dealt = @s ap
    execute if entity @s[advancements={combat:player_attacked={projectile=true}}] run scoreboard players operation @s dmg_dealt = @s dex
    execute if entity @s[advancements={combat:player_attacked={flash=true}}] run scoreboard players operation @s dmg_dealt = @s ad
# チャージ率に応じてダメージ補正(melee)
    scoreboard players operation @s dmg_dealt *= #10 Constant
    execute if entity @s[advancements={combat:player_attacked={melee_charge0=true}}] run scoreboard players set @s dmg_dealt 0
    execute if entity @s[advancements={combat:player_attacked={melee_charge1=true}}] run scoreboard players operation @s dmg_dealt /= #40 Constant
    execute if entity @s[advancements={combat:player_attacked={melee_charge2=true}}] run scoreboard players operation @s dmg_dealt /= #25 Constant
    execute if entity @s[advancements={combat:player_attacked={melee_charge3=true}}] run scoreboard players operation @s dmg_dealt /= #10 Constant
    execute if entity @s[advancements={combat:player_attacked={melee_charge4=true}}] run scoreboard players operation @s dmg_dealt /= #8 Constant
# チャージ率に応じてダメージ補正(ranged)
    execute if entity @s[advancements={combat:player_attacked={ranged_charge0=true}}] run scoreboard players set @s dmg_dealt 0
    execute if entity @s[advancements={combat:player_attacked={ranged_charge1=true}}] run scoreboard players operation @s dmg_dealt /= #40 Constant
    execute if entity @s[advancements={combat:player_attacked={ranged_charge2=true}}] run scoreboard players operation @s dmg_dealt /= #25 Constant
    execute if entity @s[advancements={combat:player_attacked={ranged_charge3=true}}] run scoreboard players operation @s dmg_dealt /= #10 Constant
    execute if entity @s[advancements={combat:player_attacked={ranged_charge4=true}}] run scoreboard players operation @s dmg_dealt /= #8 Constant
# クリティカルダメージ
    execute if predicate combat:allow_critical run function player:status/crt/chance