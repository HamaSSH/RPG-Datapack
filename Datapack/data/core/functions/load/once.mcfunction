#> core:load/once
# 一度きり実行されるコマンド(初期設定)

# ワールドのバージョン
    data modify storage global: Version set value "v0.0.0"

# forceload範囲の設定
    execute in overworld run forceload add -1 -1 0 0

# 汎用エンティティ・ストレージ 83a-51-1-X-X
    summon marker 0.0 0.0 0.0 {UUID:[I; 2106,5308417,0,0]}
    summon armor_stand 0.0 0.0 0.0 {UUID:[I; 2106,5308417,0,1],Marker:1b,Invisible:1b}
    setblock 0 0 0 white_shulker_box{Lock:"汎用シュルカーボックス"}

# ゲームルールの設定
    function core:load/gamerule

# チームの設定
    function core:load/team

# 汎用スコアの定義
    scoreboard objectives add Temporary dummy
    scoreboard objectives add Timer dummy
    scoreboard objectives add Constant dummy
    function core:load/constant

# スコアボード
    # ステータス
        scoreboard objectives add HP dummy "現在のHP"
        scoreboard objectives add MP dummy "現在のMP"
        scoreboard objectives add HPMax dummy "最大HP"
        scoreboard objectives add MPMax dummy "最大MP"
        scoreboard objectives add HPRegen dummy "HP自然回復"
        scoreboard objectives add MPRegen dummy "MP自然回復"
        scoreboard objectives add STR dummy "物理攻撃力"
        scoreboard objectives add INT dummy "魔法攻撃力"
        scoreboard objectives add DEX dummy "器用さ"
        scoreboard objectives add DEF dummy "防御力"
        scoreboard objectives add AGI dummy "素早さ"
        scoreboard objectives add CRT dummy "会心"
        scoreboard objectives add LUK dummy "幸運"
        scoreboard objectives add LVL dummy "レベル"
        scoreboard objectives add EXP dummy "経験値"
        # システム
            scoreboard objectives add PreviousMP dummy "MPの値保存"
            scoreboard objectives add NextEXP dummy "必要経験値"
            scoreboard objectives add Gold dummy "ゴールド"
            scoreboard objectives add HPRatio dummy "HP割合"
            scoreboard objectives setdisplay list HPRatio
            scoreboard objectives modify HPRatio rendertype hearts
            scoreboard objectives add MPRatio dummy "MP割合"
            scoreboard objectives add HPRTimer dummy "HP回復タイマー"
            scoreboard objectives add MPRTimer dummy "MP回復タイマー"
            scoreboard objectives add CDR dummy "クールダウン軽減"
            scoreboard objectives add AssassinLVL dummy "アサシンLVL"
            scoreboard objectives add AssassinEXP dummy "アサシンEXP"
            scoreboard objectives add FighterLVL dummy "ファイターLVL"
            scoreboard objectives add FighterEXP dummy "ファイターEXP"
            scoreboard objectives add KnightLVL dummy "ナイトLVL"
            scoreboard objectives add KnightEXP dummy "ナイトEXP"
            scoreboard objectives add WarriorLVL dummy "ウォーリアLVL"
            scoreboard objectives add WarriorEXP dummy "ウォーリアEXP"
            scoreboard objectives add WizardLVL dummy "ウィザードLVL"
            scoreboard objectives add WizardEXP dummy "ウィザードEXP"
            scoreboard objectives add HunterLVL dummy "ハンターLVL"
            scoreboard objectives add HunterEXP dummy "ハンターEXP"
        # 基礎値
            scoreboard objectives add BaseHPMax dummy "基礎HP"
            scoreboard objectives add BaseMPMax dummy "基礎MP"
            scoreboard objectives add BaseHPR dummy "基礎HPR"
            scoreboard objectives add BaseMPR dummy "基礎MPR"
            scoreboard objectives add BaseSTR dummy "基礎STR"
            scoreboard objectives add BaseINT dummy "基礎INT"
            scoreboard objectives add BaseDEX dummy "基礎DEX"
            scoreboard objectives add BaseDEF dummy "基礎DEF"
            scoreboard objectives add BaseAGI dummy "基礎AGI"
            scoreboard objectives add BaseCRT dummy "基礎CRT"
            scoreboard objectives add BaseLUK dummy "基礎LUK"
        # 補正値(装備など)
            scoreboard objectives add BonusHPMax dummy "補正HP"
            scoreboard objectives add BonusMPMax dummy "補正MP"
            scoreboard objectives add BonusHPR dummy "補正HPR"
            scoreboard objectives add BonusMPR dummy "補正MPR"
            scoreboard objectives add BonusSTR dummy "補正STR"
            scoreboard objectives add BonusINT dummy "補正INT"
            scoreboard objectives add BonusDEX dummy "補正DEX"
            scoreboard objectives add BonusDEF dummy "補正DEF"
            scoreboard objectives add BonusAGI dummy "補正AGI"
            scoreboard objectives add BonusCRT dummy "補正CRT"
            scoreboard objectives add BonusLUK dummy "補正LUK"
        # バフ
            scoreboard objectives add BuffHPMax dummy "バフHP"
            scoreboard objectives add BuffMPMax dummy "バフMP"
            scoreboard objectives add BuffHPR dummy "バフHPR"
            scoreboard objectives add BuffMPR dummy "バフMPR"
            scoreboard objectives add BuffSTR dummy "バフSTR"
            scoreboard objectives add BuffINT dummy "バフINT"
            scoreboard objectives add BuffDEX dummy "バフDEX"
            scoreboard objectives add BuffDEF dummy "バフDEF"
            scoreboard objectives add BuffAGI dummy "バフAGI"
            scoreboard objectives add BuffCRT dummy "バフCRT"
            scoreboard objectives add BuffLUK dummy "バフLUK"