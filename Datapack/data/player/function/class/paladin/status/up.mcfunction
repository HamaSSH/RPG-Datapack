#> player:class/paladin/status/up
# レベルアップごとのステータスアップ処理

# 上昇するステータス
    # 毎レベル
        scoreboard players add @s BaseHP 3
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
    # レベルアップ時のtellraw用
        execute if score @s LVL matches 5 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#81DDE1"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"リファイン","bold":true},"\\uF822I 》"],{"text":"\\n「バフの効果と継続時間が上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 10 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#81DDE1"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"スペルスラスト","bold":true},"\\uF822I 》"],{"text":"\\n「物理攻撃時に追加で魔法ダメージを与えるようになる」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 15 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#81DDE1"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"フローレス","bold":true},"\\uF822I 》"],{"text":"\\n「体力が８０％以上の時 物理・魔法攻撃力が上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 15 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#81DDE1"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"適正武器","bold":true},"\\uF822II 》"],{"text":"\\n「槍の装備時 ステータスが更に上昇する\\n　槍の溜め攻撃の威力が上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 20 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#81DDE1"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"エンハンスメント","bold":true},"\\uF822I 》"],{"text":"\\n「バフを受けている間 ステータスが上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 20 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#81DDE1"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"リファイン","bold":true},"\\uF822II 》"],{"text":"\\n「デバフ効果を無効化するようになる」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 25 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#81DDE1"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"スペルスラスト","bold":true},"\\uF822II 》"],{"text":"\\n「物理攻撃時の追加魔法ダメージが上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 30 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#81DDE1"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"フローレス","bold":true},"\\uF822II 》"],{"text":"\\n「体力が満タンの時 物理・魔法攻撃力が大きく上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 30 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#81DDE1"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"適正武器","bold":true},"\\uF822III 》"],{"text":"\\n「槍の装備時 ステータスが更に上昇する\\n　槍の溜め攻撃の威力が更に上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 35 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#81DDE1"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"エンハンスメント","bold":true},"\\uF822II 》"],{"text":"\\n「バフを受けている間 ステータスが更に上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 35 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#81DDE1"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"リファイン","bold":true},"\\uF822III 》"],{"text":"\\n「バフの効果と継続時間が更に上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 40 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#81DDE1"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"スペルスラスト","bold":true},"\\uF822III 》"],{"text":"\\n「物理攻撃時の追加魔法ダメージが更に上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 40 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#81DDE1"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"フローレス","bold":true},"\\uF822III 》"],{"text":"\\n「残り体力が多いほどステータスが大きく上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 45 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#81DDE1"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"エンハンスメント","bold":true},"\\uF822III 》"],{"text":"\\n「バフを受けている間 ステータスが更に上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 45 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#81DDE1"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"適正武器","bold":true},"\\uF822IV 》"],{"text":"\\n「槍の装備時 ステータスが更に上昇する\\n　槍の溜め攻撃の威力が更に上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 50 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#81DDE1"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"クラスマスタリー","bold":true}," 》"],{"text":"\\n「全てのパッシブスキルを強化する」","color":"#E0E0E0"}]'
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
    # フローレス「体力が８０％以上の時ステータスUP」
        execute if score @s LVL matches 15 run scoreboard players set @s PassiveSkill3 1
        execute if score @s LVL matches 30 run scoreboard players set @s PassiveSkill3 2
        execute if score @s LVL matches 40 run scoreboard players set @s PassiveSkill3 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill3 4
    # エンハンスメント「バフを受けている間ステータスUP」
        execute if score @s LVL matches 20 run scoreboard players set @s PassiveSkill4 1
        execute if score @s LVL matches 35 run scoreboard players set @s PassiveSkill4 2
        execute if score @s LVL matches 45 run scoreboard players set @s PassiveSkill4 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill4 4