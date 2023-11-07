#> player:combat/player_attacked/dmg_dealt
# プレイヤーが与えるダメージを決定

# 物理攻撃・魔法攻撃・器用攻撃に応じたステータス
    scoreboard players reset @s DmgDealt
    execute if entity @s run scoreboard players operation @s DmgDealt = @s STR
    # execute if entity @s run scoreboard players operation @s DmgDealt = @s INT
    # execute if entity @s run scoreboard players operation @s DmgDealt = @s DEX

# チャージ率に応じてダメージ補正(melee)
    scoreboard players operation @s DmgDealt *= #10 Constant
    execute if entity @s[advancements={player:combat/player_attacked={melee_charge0=true}}] run scoreboard players set @s DmgDealt 0
    execute if entity @s[advancements={player:combat/player_attacked={melee_charge1=true}}] run scoreboard players operation @s DmgDealt /= #40 Constant
    execute if entity @s[advancements={player:combat/player_attacked={melee_charge2=true}}] run scoreboard players operation @s DmgDealt /= #25 Constant
    execute if entity @s[advancements={player:combat/player_attacked={melee_charge3=true}}] run scoreboard players operation @s DmgDealt /= #10 Constant
    execute if entity @s[advancements={player:combat/player_attacked={melee_charge4=true}}] run scoreboard players operation @s DmgDealt /= #8 Constant

# クリティカルダメージ
    execute if entity @s[advancements={player:combat/player_attacked={charged=true}}] run function player:status/crt/chance