#> player:status/lvl/up/_
# レベルアップ処理

# ステータスアップ
    execute unless entity @s[tag=BeforeLevelup] unless entity @s[tag=ChangedClass] run function player:status/before_levelup
    function player:class/status/up/_

# リジェネレーション
    data modify storage player: NewBuff set value [{effect:"regeneration",duration:60,amplifier:8}]
    function player:buff/_

# レベルアップ
    tag @s add LevelUp
    scoreboard players add @s LVL 1
    execute if predicate player:class/is_rogue run scoreboard players add @s RogueLVL 1
    execute if predicate player:class/is_fighter run scoreboard players add @s FighterLVL 1
    execute if predicate player:class/is_paladin run scoreboard players add @s PaladinLVL 1
    execute if predicate player:class/is_wizard run scoreboard players add @s WizardLVL 1

# 次の必要経験値の計算
    scoreboard players operation @s EXP -= @s NextEXP
    function player:status/lvl/exp/calculate

# レベルアップをお知らせ
    execute if score @s EXP < @s NextEXP unless entity @s[tag=ChangedClass] run function player:status/lvl/up/tellraw
    execute if score @s EXP < @s NextEXP run tag @s remove BeforeLevelup
    tag @s remove LevelUp

# 複数レベルアップする場合再帰
    execute if score @s EXP >= @s NextEXP run function player:status/lvl/up/_