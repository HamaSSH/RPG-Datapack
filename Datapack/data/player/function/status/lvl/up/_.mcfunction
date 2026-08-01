#> player:status/lvl/up/_
# レベルアップ処理

# レベルアップ前のLVLを記録
    execute unless entity @s[tag=LevelingUp] run scoreboard players operation $PreviousLVL Temporary = @s LVL
    tag @s add LevelingUp

# TODO: クラス実装
    # ステータス情報保存（player:status/before_levelup）
    # レベルアップ時のリジェネバフ（player:buff/_）
    # 職業別レベル加算（Hunter/Fighter/Paladin/Wizard LVL）
    # 職業ステータス上昇（player:class/status_up）

# レベルアップ
    scoreboard players add @s LVL 1

# 次の必要経験値の計算
    scoreboard players operation @s EXP -= @s NextEXP
    function player:status/lvl/exp/calculate

# レベルアップをお知らせ
    execute if score @s EXP < @s NextEXP run tag @s remove LevelingUp
    execute if score @s EXP < @s NextEXP run function player:status/lvl/up/tellraw

# 複数レベルアップする場合は再帰
    execute if score @s EXP >= @s NextEXP run return run function player:status/lvl/up/_
