#> player:class/fighter/status/up
# レベルアップごとのステータスアップ処理

# 上昇するステータス
    # 毎レベル
        scoreboard players add @s BaseHP 4
        scoreboard players operation @s BaseHP += $LVL/10 Temporary
        scoreboard players add @s BaseMP 1
    # 2レベルごと
        execute if score %2 Temporary matches 0 run scoreboard players add @s BaseHP 1
        execute if score %2 Temporary matches 0 run scoreboard players add @s BaseSTR 1
        execute if score %2 Temporary matches 0 run scoreboard players add @s BaseCRT 3
        execute if score %2 Temporary matches 1 run scoreboard players add @s BaseMP 1
        execute if score %2 Temporary matches 1 run scoreboard players add @s BaseDEF 4
    # 3レベルごと
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseHP 2
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseSTR 2
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseCRT 1
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseDEF 3
    # 5レベルごと
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseMP 1
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseCRT 2
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseDEF 2
    # 10レベルごと
        execute if score %10 Temporary matches 5 run scoreboard players add @s BaseHPR 25
        execute if score %10 Temporary matches 0 run scoreboard players add @s BaseMPR 15

# 職業ランク(普通|銀|金アイコン用)
    execute if score @s LVL matches 20..49 run scoreboard players set @s FighterRank 1
    execute if score @s LVL matches 20..49 run team join Fighter1
    execute if score @s LVL matches 50.. run scoreboard players set @s FighterRank 2
    execute if score @s LVL matches 50.. run team join Fighter2

# パッシブスキル
    # 適正武器「刀剣 / ﾊﾝﾏｰの装備時ステータスUP」
        execute if score @s LVL matches 15 run scoreboard players set @s PassiveWeapon 2
        execute if score @s LVL matches 30 run scoreboard players set @s PassiveWeapon 3
        execute if score @s LVL matches 45 run scoreboard players set @s PassiveWeapon 4
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveWeapon 5
    # 溜め攻撃「刀剣 / ﾊﾝﾏｰのため攻撃を撃てるようになる」
        execute if score @s LVL matches 15 run scoreboard players set @s ChargeSkill 2
        execute if score @s LVL matches 30 run scoreboard players set @s ChargeSkill 3
        execute if score @s LVL matches 45 run scoreboard players set @s ChargeSkill 4
        execute if score @s LVL matches 50 run scoreboard players set @s ChargeSkill 5
    # 強靭「敵からのノックバックや移動阻害効果を低減」
        execute if score @s LVL matches 5 run scoreboard players set @s PassiveSkill1 1
        execute if score @s LVL matches 20 run scoreboard players set @s PassiveSkill1 2
        execute if score @s LVL matches 35 run scoreboard players set @s PassiveSkill1 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill1 4
    # 闘志「体力の低下に応じてステータスが強化される」
        execute if score @s LVL matches 10 run scoreboard players set @s PassiveSkill2 1
        execute if score @s LVL matches 25 run scoreboard players set @s PassiveSkill2 2
        execute if score @s LVL matches 40 run scoreboard players set @s PassiveSkill2 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill2 4
    # 反撃「攻撃を受けた際防御力に応じてダメージを返す」
        execute if score @s LVL matches 15 run scoreboard players set @s PassiveSkill3 1
        execute if score @s LVL matches 30 run scoreboard players set @s PassiveSkill3 2
        execute if score @s LVL matches 40 run scoreboard players set @s PassiveSkill3 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill3 4
    # 攻勢「防御力の一部を物理攻撃力に加算する」
        execute if score @s LVL matches 20 run scoreboard players set @s PassiveSkill4 1
        execute if score @s LVL matches 35 run scoreboard players set @s PassiveSkill4 2
        execute if score @s LVL matches 45 run scoreboard players set @s PassiveSkill4 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill4 4