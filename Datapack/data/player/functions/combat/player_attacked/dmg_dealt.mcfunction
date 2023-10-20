#> player:combat/player_attacked/dmg_dealt
# プレイヤーが与えるダメージを決定

# 物理攻撃・魔法攻撃・器用攻撃に応じたステータス
    scoreboard players reset @s DmgDealt
    execute if entity @s run scoreboard players operation @s DmgDealt = @s STR
    # execute if entity @s run scoreboard players operation @s DmgDealt = @s INT
    # execute if entity @s run scoreboard players operation @s DmgDealt = @s DEX

# クリティカルダメージ
    function player:status/crt/chance