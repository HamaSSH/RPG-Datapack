#> player:class/paladin/status/up
# レベルアップごとのステータスアップ処理

# 上昇するステータス
    # 毎レベル
        scoreboard players add @s BaseHP 3
        scoreboard players operation @s BaseHP += $LVL/10 Temporary
        scoreboard players add @s BaseMP 1
    # 2レベルごと
        execute if score %2 Temporary matches 0 run scoreboard players add @s BaseSTR 1
        execute if score %2 Temporary matches 0 run scoreboard players add @s BaseMP 2
        execute if score %2 Temporary matches 0 run scoreboard players add @s BaseDEF 3
        execute if score %2 Temporary matches 1 run scoreboard players add @s BaseHP 1
        execute if score %2 Temporary matches 1 run scoreboard players add @s BaseAGI 2
    # 3レベルごと
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseSTR 1
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseINT 1
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseHP 1
        execute if score %3 Temporary matches 0 run scoreboard players add @s BaseDEF 3
    # 5レベルごと
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseMP 2
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseINT 1
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseAGI 2
    # 10レベルごと
        execute if score %10 Temporary matches 5 run scoreboard players add @s BaseHPR 20
        execute if score %10 Temporary matches 5 run scoreboard players add @s BaseDEF 4
        execute if score %10 Temporary matches 5 run scoreboard players add @s BaseAGI 3
        execute if score %10 Temporary matches 0 run scoreboard players add @s BaseMPR 25
        execute if score %10 Temporary matches 0 run scoreboard players add @s BaseINT 1

# 職業ランク(普通|銀|金アイコン用)
    execute if score @s LVL matches 20..49 run scoreboard players set @s PaladinRank 1
    execute if score @s LVL matches 20..49 run team join Paladin1
    execute if score @s LVL matches 50.. run scoreboard players set @s PaladinRank 2
    execute if score @s LVL matches 50.. run team join Paladin2

# パッシブスキル
    # 適正武器「槍の装備時ステータスUP」
        execute if score @s LVL matches 15 run scoreboard players set @s PassiveWeapon 2
        execute if score @s LVL matches 30 run scoreboard players set @s PassiveWeapon 3
        execute if score @s LVL matches 45 run scoreboard players set @s PassiveWeapon 4
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveWeapon 5
    # 溜め攻撃「槍のため攻撃を撃てるようになる」
        execute if score @s LVL matches 15 run scoreboard players set @s ChargeSkill 2
        execute if score @s LVL matches 30 run scoreboard players set @s ChargeSkill 3
        execute if score @s LVL matches 45 run scoreboard players set @s ChargeSkill 4
        execute if score @s LVL matches 50 run scoreboard players set @s ChargeSkill 5
    # リファイン「バフの効果と継続時間UP」
        execute if score @s LVL matches 5 run scoreboard players set @s PassiveSkill1 1
        execute if score @s LVL matches 20 run scoreboard players set @s PassiveSkill1 2
        execute if score @s LVL matches 35 run scoreboard players set @s PassiveSkill1 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill1 4
    # スペルスラスト「物理攻撃時に追加で魔法ダメージを与える」
        execute if score @s LVL matches 10 run scoreboard players set @s PassiveSkill2 1
        execute if score @s LVL matches 25 run scoreboard players set @s PassiveSkill2 2
        execute if score @s LVL matches 40 run scoreboard players set @s PassiveSkill2 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill2 4
    # フローレス「HPが80%以上の時ステータスUP」
        execute if score @s LVL matches 15 run scoreboard players set @s PassiveSkill3 1
        execute if score @s LVL matches 30 run scoreboard players set @s PassiveSkill3 2
        execute if score @s LVL matches 40 run scoreboard players set @s PassiveSkill3 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill3 4
    # エンハンスメント「バフを受けている間ステータスUP」
        execute if score @s LVL matches 20 run scoreboard players set @s PassiveSkill4 1
        execute if score @s LVL matches 35 run scoreboard players set @s PassiveSkill4 2
        execute if score @s LVL matches 45 run scoreboard players set @s PassiveSkill4 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill4 4