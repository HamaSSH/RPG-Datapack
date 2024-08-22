#> player:class/wizard/status/up
# レベルアップごとのステータスアップ処理

# 上昇するステータス
    # 毎レベル
        scoreboard players add @s BaseHP 2
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
        execute if score %10 Temporary matches 5 run scoreboard players add @s BaseHPR 10
        execute if score %10 Temporary matches 0 run scoreboard players add @s BaseMPR 30
        execute if score %5 Temporary matches 0 run scoreboard players add @s BaseLUK 4

# 職業ランク(普通|銀|金アイコン用)
    execute if score @s LVL matches 20..49 run scoreboard players set @s WizardRank 1
    execute if score @s LVL matches 20..49 run team join Wizard1
    execute if score @s LVL matches 50.. run scoreboard players set @s WizardRank 2
    execute if score @s LVL matches 50.. run team join Wizard2

# パッシブスキル
    # レベルアップ時のtellraw用
        execute if score @s LVL matches 5 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A486DA"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"アクセラレート","bold":true},"\\uF822I 》"],{"text":"\\n「魔導書のクールダウンが軽減される」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 10 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A486DA"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"マナサージ","bold":true},"\\uF822I 》"],{"text":"\\n「魔法ダメージの一部をＭＰとして回復する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 15 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A486DA"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"エレメントフォーカス","bold":true},"\\uF822I 》"],{"text":"\\n「属性纏いの効果時間が増加する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 15 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A486DA"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"適正武器","bold":true},"\\uF822II 》"],{"text":"\\n「杖・魔導書の装備時 ステータスが更に上昇する\\n　杖の溜め攻撃の威力が上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 20 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A486DA"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"スペルエコー","bold":true},"\\uF822I 》"],{"text":"\\n「魔導書の使用直後、低確率で即再発動できるようになる」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 20 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A486DA"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"アクセラレート","bold":true},"\\uF822II 》"],{"text":"\\n「魔導書のクールダウンが更に低減される」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 25 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A486DA"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"マナサージ","bold":true},"\\uF822II 》"],{"text":"\\n「魔法ダメージの一部をＭＰとして更に回復する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 30 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A486DA"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"エレメントフォーカス","bold":true},"\\uF822II 》"],{"text":"\\n「属性纏い中に与えるダメージが増加する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 30 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A486DA"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"適正武器","bold":true},"\\uF822II 》"],{"text":"\\n「杖・魔導書の装備時 ステータスが更に上昇する\\n　杖の溜め攻撃の威力が更に上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 35 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A486DA"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"スペルエコー","bold":true},"\\uF822II 》"],{"text":"\\n「魔導書の使用直後、確率で即再発動できるようになる」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 35 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A486DA"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"アクセラレート","bold":true},"\\uF822III 》"],{"text":"\\n「魔導書のクールダウンが激減する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 40 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A486DA"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"マナサージ","bold":true},"\\uF822III 》"],{"text":"\\n「魔法ダメージの一部をＭＰとして更に回復する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 40 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A486DA"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"エレメントフォーカス","bold":true},"\\uF822III 》"],{"text":"\\n「複数の属性纏いが重複するようになる」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 45 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A486DA"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"スペルエコー","bold":true},"\\uF822III 》"],{"text":"\\n「魔導書の使用直後、中確率で即再発動できるようになる」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 45 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A486DA"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"適正武器","bold":true},"\\uF822II 》"],{"text":"\\n「杖・魔導書の装備時 ステータスが更に上昇する\\n　杖の溜め攻撃の威力が更に上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 50 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A486DA"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"クラスマスタリー","bold":true}," 》"],{"text":"\\n「全てのパッシブスキルを強化する」","color":"#E0E0E0"}]'
    # 適正武器「杖・魔導書の装備時ステータスＵＰ」
        execute if score @s LVL matches 15 run scoreboard players set @s PassiveWeapon 2
        execute if score @s LVL matches 30 run scoreboard players set @s PassiveWeapon 3
        execute if score @s LVL matches 45 run scoreboard players set @s PassiveWeapon 4
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveWeapon 5
    # 溜め攻撃「杖のため攻撃を撃てるようになる」
        execute if score @s LVL matches 15 run scoreboard players set @s ChargeSkill 2
        execute if score @s LVL matches 30 run scoreboard players set @s ChargeSkill 3
        execute if score @s LVL matches 45 run scoreboard players set @s ChargeSkill 4
        execute if score @s LVL matches 50 run scoreboard players set @s ChargeSkill 5
    # アクセラレート「魔導書のクールダウン低減」
        execute if score @s LVL matches 5 run scoreboard players set @s PassiveSkill1 1
        execute if score @s LVL matches 20 run scoreboard players set @s PassiveSkill1 2
        execute if score @s LVL matches 35 run scoreboard players set @s PassiveSkill1 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill1 4
    # マナサージ「魔法ダメージをＭＰとして回復」
        execute if score @s LVL matches 10 run scoreboard players set @s PassiveSkill2 1
        execute if score @s LVL matches 25 run scoreboard players set @s PassiveSkill2 2
        execute if score @s LVL matches 40 run scoreboard players set @s PassiveSkill2 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill2 4
    # エレメントフォーカス「属性纏い概念の強化」
        execute if score @s LVL matches 15 run scoreboard players set @s PassiveSkill3 1
        execute if score @s LVL matches 30 run scoreboard players set @s PassiveSkill3 2
        execute if score @s LVL matches 40 run scoreboard players set @s PassiveSkill3 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill3 4
    # スペルエコー「魔導書を確率で即再発動可能」
        execute if score @s LVL matches 20 run scoreboard players set @s PassiveSkill4 1
        execute if score @s LVL matches 35 run scoreboard players set @s PassiveSkill4 2
        execute if score @s LVL matches 45 run scoreboard players set @s PassiveSkill4 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill4 4