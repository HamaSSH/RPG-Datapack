#> player:class/hunter/status/up
# レベルアップごとのステータスアップ処理

# 上昇するステータス
    # 毎レベル
        scoreboard players add @s BaseHP 3
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
    # レベルアップ時のtellraw用
        execute if score @s LVL matches 5 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A9E07D"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"熟練の弓使い","bold":true},"\\uF822I 》"],{"text":"\\n「左クリックで矢を放つことができるようになる」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 10 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A9E07D"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"迅速な身のこなし","bold":true},"\\uF822I 》"],{"text":"\\n「地上や水中での移動能力が上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 15 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A9E07D"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"疾風の舞","bold":true},"\\uF822I 》"],{"text":"\\n「素早さに応じて攻撃速度が上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 15 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A9E07D"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"適正武器","bold":true},"\\uF822II 》"],{"text":"\\n「弓・短剣の装備時 ステータスが更に上昇する\\n　弓・短剣の溜め攻撃の威力が上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 20 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A9E07D"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"会心の極意","bold":true},"\\uF822I 》"],{"text":"\\n「クリティカルヒット時 素早さが大きく上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 20 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A9E07D"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"熟練の弓使い","bold":true},"\\uF822II 》"],{"text":"\\n「放つ矢が更に貫通するようになる」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 25 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A9E07D"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"迅速な身のこなし","bold":true},"\\uF822II 》"],{"text":"\\n「地上や水中での移動能力が更に上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 30 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A9E07D"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"疾風の舞","bold":true},"\\uF822II 》"],{"text":"\\n「素早さに応じて会心値が上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 30 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A9E07D"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"適正武器","bold":true},"\\uF822III 》"],{"text":"\\n「弓・短剣の装備時 ステータスが更に上昇する\\n　弓・短剣の溜め攻撃の威力が更に上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 35 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A9E07D"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"会心の極意","bold":true},"\\uF822II 》"],{"text":"\\n「クリティカルヒット時 物理攻撃力が大きく上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 35 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A9E07D"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"熟練の弓使い","bold":true},"\\uF822III 》"],{"text":"\\n「チャージして放たれる矢の本数が増える」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 40 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A9E07D"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"迅速な身のこなし","bold":true},"\\uF822III 》"],{"text":"\\n「地上や水中での移動能力が更に上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 40 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A9E07D"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"疾風の舞","bold":true},"\\uF822III 》"],{"text":"\\n「素早さに応じて攻撃速度が更に上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 45 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A9E07D"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"会心の極意","bold":true},"\\uF822III 》"],{"text":"\\n「クリティカルヒット時 会心値が大きく上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 45 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A9E07D"}," ▸ｽｷﾙﾚﾍﾞﾙｱｯﾌﾟ!\\uF822《 ",{"text":"適正武器","bold":true},"\\uF822IV 》"],{"text":"\\n「弓・短剣の装備時 ステータスが更に上昇する\\n　弓・短剣の溜め攻撃の威力が更に上昇する」","color":"#E0E0E0"}]'
        execute if score @s LVL matches 50 run data modify storage player: passive_ui append value '["",[{"text":"","color":"#A9E07D"}," ▸新ﾊﾟｯｼﾌﾞｽｷﾙ!\\uF822《 ",{"text":"クラスマスタリー","bold":true}," 》"],{"text":"\\n「全てのパッシブスキルを強化する」","color":"#E0E0E0"}]'
    # 適正武器「弓・短剣の装備時ステータスＵＰ」
        execute if score @s LVL matches 15 run scoreboard players set @s PassiveWeapon 2
        execute if score @s LVL matches 30 run scoreboard players set @s PassiveWeapon 3
        execute if score @s LVL matches 45 run scoreboard players set @s PassiveWeapon 4
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveWeapon 5
    # 溜め攻撃「弓・短剣のため攻撃を撃てるようになる」
        execute if score @s LVL matches 15 run scoreboard players set @s ChargeSkill 2
        execute if score @s LVL matches 30 run scoreboard players set @s ChargeSkill 3
        execute if score @s LVL matches 45 run scoreboard players set @s ChargeSkill 4
        execute if score @s LVL matches 50 run scoreboard players set @s ChargeSkill 5
    # 熟練の弓使い「左クリック矢・矢の貫通・発射本数ＵＰ」
        execute if score @s LVL matches 5 run scoreboard players set @s PassiveSkill1 1
        execute if score @s LVL matches 20 run scoreboard players set @s PassiveSkill1 2
        execute if score @s LVL matches 35 run scoreboard players set @s PassiveSkill1 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill1 4
    # 迅速な身のこなし「地上や水中での移動能力ＵＰ」
        execute if score @s LVL matches 10 run scoreboard players set @s PassiveSkill2 1
        execute if score @s LVL matches 25 run scoreboard players set @s PassiveSkill2 2
        execute if score @s LVL matches 40 run scoreboard players set @s PassiveSkill2 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill2 4
    # 疾風の舞「素早さに応じて攻撃速度ＵＰ」
        execute if score @s LVL matches 15 run scoreboard players set @s PassiveSkill3 1
        execute if score @s LVL matches 30 run scoreboard players set @s PassiveSkill3 2
        execute if score @s LVL matches 40 run scoreboard players set @s PassiveSkill3 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill3 4
    # 会心の極意「会心時にステータス大幅ＵＰ」
        execute if score @s LVL matches 20 run scoreboard players set @s PassiveSkill4 1
        execute if score @s LVL matches 35 run scoreboard players set @s PassiveSkill4 2
        execute if score @s LVL matches 45 run scoreboard players set @s PassiveSkill4 3
        execute if score @s LVL matches 50 run scoreboard players set @s PassiveSkill4 4