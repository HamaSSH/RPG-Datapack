#> player:class/wizard/status/up
# レベルアップごとのステータスアップ処理

# 上昇するステータス
    # 毎レベル
        scoreboard players add @s BaseHP 2
        scoreboard players operation @s BaseHP += $LVL/10 Temporary
        scoreboard players add @s BaseMP 2
    # 2レベルごと
        execute if score %2 Temporary matches 0 run scoreboard players add @s BaseMP 3
        execute if score %2 Temporary matches 0 run scoreboard players add @s BaseINT 1
        execute if score %2 Temporary matches 0 run scoreboard players add @s BaseLUK 2
        execute if score %2 Temporary matches 1 run scoreboard players add @s BaseHP 1
        execute if score %2 Temporary matches 1 run scoreboard players add @s BaseAGI 2
    # 3レベルごと
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseMP 3
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseINT 1
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseLUK 1
    # 5レベルごと
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseHP 1
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseINT 1
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseAGI 3
    # 10レベルごと
        execute if score %10 Temporary matches 5 run scoreboard players add @s BaseHPR 15
        execute if score %10 Temporary matches 0 run scoreboard players add @s BaseMPR 40
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseLUK 4

# 職業ランク(普通|銀|金アイコン用)
    execute if score @s LVL matches 20..49 run scoreboard players set @s WizardRank 1
    execute if score @s LVL matches 20..49 run team join Wizard1
    execute if score @s LVL matches 50.. run scoreboard players set @s WizardRank 2
    execute if score @s LVL matches 50.. run team join Wizard2

# パッシブスキル
    # 適正武器「杖 / 魔導書の装備時ステータスUP」
        execute if score @s LVL matches 15 run scoreboard players set @s PassiveWeapon 2
        execute if score @s LVL matches 30 run scoreboard players set @s PassiveWeapon 3
        execute if score @s LVL matches 45 run scoreboard players set @s PassiveWeapon 4
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveWeapon 5
    # 溜め攻撃「杖のため攻撃を撃てるようになる」
        execute if score @s LVL matches 15 run scoreboard players set @s ChargeSkill 2
        execute if score @s LVL matches 30 run scoreboard players set @s ChargeSkill 3
        execute if score @s LVL matches 45 run scoreboard players set @s ChargeSkill 4
        execute if score @s LVL matches 50 run scoreboard players set @s ChargeSkill 5
    # アクセラレート「魔導書のクールダウンが軽減される」
        execute if score @s LVL matches 5 run scoreboard players set @s PassiveSkill1 1
        execute if score @s LVL matches 20 run scoreboard players set @s PassiveSkill1 2
        execute if score @s LVL matches 35 run scoreboard players set @s PassiveSkill1 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill1 4
    # マナサージ「魔法ダメージの一部をMPとして回復する」
        execute if score @s LVL matches 10 run scoreboard players set @s PassiveSkill2 1
        execute if score @s LVL matches 25 run scoreboard players set @s PassiveSkill2 2
        execute if score @s LVL matches 40 run scoreboard players set @s PassiveSkill2 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill2 4
    # エレメントフォーカス「属性纏い中に与えるダメージが増加する」
        execute if score @s LVL matches 15 run scoreboard players set @s PassiveSkill3 1
        execute if score @s LVL matches 30 run scoreboard players set @s PassiveSkill3 2
        execute if score @s LVL matches 40 run scoreboard players set @s PassiveSkill3 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill3 4
    # スペルエコー「魔導書の使用直後、確率で即再発動できる」
        execute if score @s LVL matches 20 run scoreboard players set @s PassiveSkill4 1
        execute if score @s LVL matches 35 run scoreboard players set @s PassiveSkill4 2
        execute if score @s LVL matches 45 run scoreboard players set @s PassiveSkill4 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill4 4