#> player:class/fighter/status/up
# レベルアップごとのステータスアップ処理

# 上昇するステータス
    # 毎レベル
        scoreboard players add @s BaseHP 4
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
    # レベルアップ時のtellraw用
        execute if score @s LVL matches 5 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#E7AC72"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"強靭","bold":true},"\\uF822I 》"],{"text":"\\n「敵からのノックバックや落下ダメージ等を低減する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 10 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#E7AC72"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"闘志","bold":true},"\\uF822I 》"],{"text":"\\n「体力が下がるほどステータスが上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 15 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#E7AC72"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"反撃","bold":true},"\\uF822I 》"],{"text":"\\n「被ダメージ時 ＨＰに応じて反撃ダメージを与える」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 15 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#E7AC72"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"適正武器","bold":true},"\\uF822II 》"],{"text":"\\n「刀剣・ﾊﾝﾏｰの装備時 ステータスが更に上昇する\\n　刀剣・ﾊﾝﾏｰの溜め攻撃の威力が上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 20 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#E7AC72"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"攻勢","bold":true},"\\uF822I 》"],{"text":"\\n「防御力に応じて物理攻撃力が上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 20 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#E7AC72"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"強靭","bold":true},"\\uF822II 》"],{"text":"\\n「敵からのノックバックや落下ダメージ等を半減する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 25 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#E7AC72"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"闘志","bold":true},"\\uF822II 》"],{"text":"\\n「体力が下がるほどステータスが更に上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 30 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#E7AC72"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"反撃","bold":true},"\\uF822II 》"],{"text":"\\n「被ダメージ時 ＨＰに応じて更に反撃ダメージを与える」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 30 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#E7AC72"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"適正武器","bold":true},"\\uF822III 》"],{"text":"\\n「刀剣・ﾊﾝﾏｰの装備時 ステータスが更に上昇する\\n　刀剣・ﾊﾝﾏｰの溜め攻撃の威力が更に上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 35 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#E7AC72"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"攻勢","bold":true},"\\uF822II 》"],{"text":"\\n「防御力に応じて物理攻撃力が更に上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 35 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#E7AC72"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"強靭","bold":true},"\\uF822III 》"],{"text":"\\n「敵からのノックバックや落下ダメージ等を激減する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 40 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#E7AC72"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"闘志","bold":true},"\\uF822III 》"],{"text":"\\n「体力が下がるほどステータスが更に上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 40 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#E7AC72"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"反撃","bold":true},"\\uF822III 》"],{"text":"\\n「被ダメージ時 ＨＰに応じて更に反撃ダメージを与える」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 45 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#E7AC72"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"攻勢","bold":true},"\\uF822III 》"],{"text":"\\n「防御力に応じて物理攻撃力が更に上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 45 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#E7AC72"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"適正武器","bold":true},"\\uF822IV 》"],{"text":"\\n「刀剣・ﾊﾝﾏｰの装備時 ステータスが更に上昇する\\n　刀剣・ﾊﾝﾏｰの溜め攻撃の威力が更に上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 50 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#E7AC72"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"クラスマスタリー","bold":true}," 》"],{"text":"\\n「全てのパッシブスキルを強化する」","color":"#E0E0E0"}]'
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
    # 反撃「被ダメージ時防御力に応じて反撃ダメージを与える」
        execute if score @s LVL matches 15 run scoreboard players set @s PassiveSkill3 1
        execute if score @s LVL matches 30 run scoreboard players set @s PassiveSkill3 2
        execute if score @s LVL matches 40 run scoreboard players set @s PassiveSkill3 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill3 4
    # 攻勢「防御力の一部を物理攻撃力に加算する」
        execute if score @s LVL matches 20 run scoreboard players set @s PassiveSkill4 1
        execute if score @s LVL matches 35 run scoreboard players set @s PassiveSkill4 2
        execute if score @s LVL matches 45 run scoreboard players set @s PassiveSkill4 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill4 4