#> player:class/hunter/status/up
# レベルアップごとのステータスアップ処理

# 上昇するステータス
    # 毎レベル
        scoreboard players add @s BaseHP 3
        scoreboard players operation @s BaseHP += $LVL/10 Temporary
        scoreboard players add @s BaseMP 2
    # 2レベルごと
        execute if score %2 Temporary matches 0 run scoreboard players add @s BaseMP 1
        execute if score %2 Temporary matches 0 run scoreboard players add @s BaseDEX 1
        execute if score %2 Temporary matches 0 run scoreboard players add @s BaseAGI 2
        execute if score %2 Temporary matches 1 run scoreboard players add @s BaseHP 1
        execute if score %2 Temporary matches 1 run scoreboard players add @s BaseSTR 1
        execute if score %2 Temporary matches 1 run scoreboard players add @s BaseCRT 1
    # 3レベルごと
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseMP 1
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseDEX 1
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseAGI 2
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseCRT 3
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseLUK 2
    # 5レベルごと
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseMP 1
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseSTR 1
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseAGI 3
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseCRT 2
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseLUK 3
    # 10レベルごと
        execute if score %10 Temporary matches 5 run scoreboard players add @s BaseHPR 15
        execute if score %10 Temporary matches 5 run scoreboard players add @s BaseAGI 6
        execute if score %10 Temporary matches 0 run scoreboard players add @s BaseMPR 20
        execute if score %10 Temporary matches 0 run scoreboard players add @s BaseDEX 2
        execute if score %10 Temporary matches 0 run scoreboard players add @s BaseCRT 8

# 職業ランク(普通|銀|金アイコン用)
    execute if score @s LVL matches 20..49 run scoreboard players set @s HunterRank 1
    execute if score @s LVL matches 20..49 run team join Hunter1
    execute if score @s LVL matches 50.. run scoreboard players set @s HunterRank 2
    execute if score @s LVL matches 50.. run team join Hunter2

# パッシブスキル
    # 適正武器「弓 / 短剣の装備時ステータスUP」
        execute if score @s LVL matches 15 run scoreboard players set @s PassiveWeapon 2
        execute if score @s LVL matches 30 run scoreboard players set @s PassiveWeapon 3
        execute if score @s LVL matches 45 run scoreboard players set @s PassiveWeapon 4
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveWeapon 5
    # 溜め攻撃「弓 / 短剣のため攻撃を撃てるようになる」
        execute if score @s LVL matches 15 run scoreboard players set @s ChargeSkill 2
        execute if score @s LVL matches 30 run scoreboard players set @s ChargeSkill 3
        execute if score @s LVL matches 45 run scoreboard players set @s ChargeSkill 4
        execute if score @s LVL matches 50 run scoreboard players set @s ChargeSkill 5
    # 熟練の弓使い「左クリック矢・矢の貫通力UP・放つ矢が増える」
        execute if score @s LVL matches 5 run scoreboard players set @s PassiveSkill1 1
        execute if score @s LVL matches 20 run scoreboard players set @s PassiveSkill1 2
        execute if score @s LVL matches 35 run scoreboard players set @s PassiveSkill1 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill1 4
    # 迅速な身のこなし「移動速度が上昇する。非戦闘時は更に」
        execute if score @s LVL matches 10 run scoreboard players set @s PassiveSkill2 1
        execute if score @s LVL matches 25 run scoreboard players set @s PassiveSkill2 2
        execute if score @s LVL matches 40 run scoreboard players set @s PassiveSkill2 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill2 4
    # 疾風の舞「移動速度に応じて攻撃速度UP」
        execute if score @s LVL matches 15 run scoreboard players set @s PassiveSkill3 1
        execute if score @s LVL matches 30 run scoreboard players set @s PassiveSkill3 2
        execute if score @s LVL matches 40 run scoreboard players set @s PassiveSkill3 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill3 4
    # 会心の極意「会心率が幸運ステータスにも応じて上昇する」
        execute if score @s LVL matches 20 run scoreboard players set @s PassiveSkill4 1
        execute if score @s LVL matches 35 run scoreboard players set @s PassiveSkill4 2
        execute if score @s LVL matches 45 run scoreboard players set @s PassiveSkill4 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill4 4